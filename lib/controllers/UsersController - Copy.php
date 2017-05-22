<?php
namespace Lib\Controllers;

use \Slim\Container as Container;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class UsersController {
    protected $container;
    protected $view;
    protected $db;

    public function __construct(Container $container) {
        $this->container = $container;
        $this->view = $container->get('view');
        $this->db = $container->get('db');
    }
    public function home(Request $request, Response $response): Response {
        return $response->withRedirect('/users');
    }
    public function showUsers(Request $request, Response $response): Response {
        $path = 'users';
        $users = $this->getUsers();

        $response = $response->withHeader('X-Robots-Tag', 'noindex, nofollow');
        return $this->view->render($response, $path . '.html', [
            'path' => $path,
            'users' => $users,
        ]);
    }
    public function get(Request $request, Response $response): Response {
        $response = $response->withHeader('Access-Control-Allow-Origin', '*')->withHeader('X-Robots-Tag', 'noindex, nofollow');
        return $response->withJson($this->getUsers());
    }
    public function post(Request $request, Response $response): Response {
        $path = 'users';
        $body = $request->getParsedBody();

        if ($this->postUser($body['name'], $body['birthdate'])) {
            return $response->withStatus(201);
        } else {
            $response = $response->getBody()->write("{message: adding new user failed}");
            $response = $response->withStatus(422);
            return $response;
        }
    }
    public function put(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $body = $request->getParsedBody();
        $this->putUser($id, $body['name'], $body['birthdate']);
        return $response->withStatus(200);
    }
    public function patch(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $body = $request->getParsedBody();
        $body = call_user_func_array('array_merge', array_map(function ($key, $value) {
            return [filter_var($key, FILTER_SANITIZE_STRING) => filter_var($value, FILTER_SANITIZE_STRING)];
        }, array_keys($body), $body));

        $this->patchUser($id, $body);
        return $response->withStatus(200);
    }
    public function delete(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $this->deleteUser($id);
        return $response->withStatus(200);
    }
    public function options(Request $request, Response $response) {
        $routes = $this->container->get('routes');
        $methods = implode(',', array_unique(array_map(function ($route) {
            return $route['method'];
        }, $routes)));
        $response = $response->withHeader('Allow', $methods);
        return $response->withJson($routes);
    }

    private function getUsers (): array {
        $stmt = $this->db->prepare("SELECT name, birthdate FROM users LIMIT 1000");
        if ($stmt->execute()) {
            $result = $stmt->fetchAll();
        } else { var_dump($this->db->errorInfo()); }
        return $result;
    }
    private function postUser (string $name, string $birthdate): bool {
        $stmt = $this->db->prepare("INSERT INTO users (name, birthdate) VALUES (:name, :birthdate)");
        $stmt->bindParam(':name', $name, \PDO::PARAM_STR);
        $stmt->bindParam(':birthdate', $birthdate, \PDO::PARAM_STR);
        try {
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            var_dump($this->db->errorInfo());
            return false;
        }
    }
    private function putUser (int $id, string $name, string $birthdate): bool {
        $stmt = $this->db->prepare("UPDATE users SET name = :name, birthdate = :birthdate WHERE id = :id");
        $stmt->bindParam(':id', $id, \PDO::PARAM_INT);
        $stmt->bindParam(':name', $name, \PDO::PARAM_STR);
        $stmt->bindParam(':birthdate', $birthdate, \PDO::PARAM_STR);
        try {
            $stmt->execute();
        } catch (PDOException $e) {
            var_dump($this->db->errorInfo());
        }
        return true;
    }
    private function patchUser (int $id, array $data): bool {
        $set_string = implode(', ', array_map(function ($key) {
            return "{$key} = :{$key}";
        }, array_keys($data)));

        $stmt = $this->db->prepare("UPDATE users SET {$set_string} WHERE id = :id");
        foreach ($data as $key => $value) {
            $stmt->bindValue(":{$key}", $value, \PDO::PARAM_STR);
        }
        $stmt->bindValue(':id', $id, \PDO::PARAM_INT);

        try {
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            var_dump($this->db->errorInfo());
            return false;
        }
    }
    private function deleteUser (int $id): bool {
        $stmt = $this->db->prepare("DELETE FROM users WHERE id = :id");
        $stmt->bindValue(':id', $id, \PDO::PARAM_INT);

        try {
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            var_dump($this->db->errorInfo());
            return false;
        }
    }
}