<?php
namespace Lib\Controllers;

use \Slim\Container as Container;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class AuthorsCtrl extends Controller {
    public function getAll(Request $request, Response $response): Response {
        $response = $response->withHeader('X-Robots-Tag', 'noindex, nofollow');
        return $response->withJson($this->getAuthors());
    }
    public function getOne(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $response = $response->withHeader('X-Robots-Tag', 'noindex, nofollow');
        return $response->withJson($this->getAuthor($id));
    }
    public function add(Request $request, Response $response): Response {
        $body = $request->getParsedBody();

        if ($this->post($body['name'], !empty($body['poster']) ? $body['poster'] : null)) {
            return $response->withStatus(201);
        } else {
            $response = $response->getBody()->write("{message: adding new author failed}");
            $response = $response->withStatus(422);
            return $response;
        }
    }
    public function replace(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $body = $request->getParsedBody();
        $this->replaceAuthor($id, $body['name'], !empty($body['poster']) ? $body['poster'] : null);
        return $response->withStatus(200);
    }
    public function update(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $body = $request->getParsedBody();
        $body = call_user_func_array('array_merge', array_map(function ($key, $value) {
            return [filter_var($key, FILTER_SANITIZE_STRING) => filter_var($value, FILTER_SANITIZE_STRING)];
        }, array_keys($body), $body));

        $this->patchAuthor($id, $body);
        return $response->withStatus(200);
    }
    public function delete(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $this->deleteAuthor($id);
        return $response->withStatus(200);
    }

    private function getAuthors (): array {
        $stmt = $this->db->query("SELECT id, name, poster FROM authors LIMIT 1000");
        if ($stmt->execute()) {
            $result = $stmt->fetchAll();
        } else { var_dump($this->db->errorInfo()); }
        return $result;
    }
    private function getAuthor ($id): array {
        $stmt = $this->db->prepare("SELECT id, name, poster FROM authors WHERE id = :id LIMIT 1");
        $stmt->bindParam(':id', $id, \PDO::PARAM_INT);
        if ($stmt->execute()) {
            $result = $stmt->fetch();
        } else { var_dump($this->db->errorInfo()); }
        return $result;
    }
    private function post (string $name, $poster): bool {
        $stmt = $this->db->prepare("INSERT INTO authors VALUES (null, :name, :poster)");
        $stmt->bindValue(':name', $name, \PDO::PARAM_STR);
        $stmt->bindValue(':poster', $poster, \PDO::PARAM_STR);
        try {
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            var_dump($this->db->errorInfo());
            return false;
        }
    }
    private function replaceAuthor (int $id, string $name, $poster): bool {
        $stmt = $this->db->prepare("UPDATE authors SET name = :name, poster = :poster WHERE id = :id");
        $stmt->bindParam(':id', $id, \PDO::PARAM_INT);
        $stmt->bindParam(':name', $name, \PDO::PARAM_STR);
        $stmt->bindParam(':poster', $poster, \PDO::PARAM_STR);
        try {
            $stmt->execute();
        } catch (PDOException $e) {
            var_dump($this->db->errorInfo());
        }
        return true;
    }
    private function patchAuthor (int $id, array $data): bool {
        $set_string = implode(', ', array_map(function ($key) {
            return "{$key} = :{$key}";
        }, array_keys($data)));

        $stmt = $this->db->prepare("UPDATE authors SET {$set_string} WHERE id = :id");
        echo "UPDATE authors SET {$set_string} WHERE id = :id";
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
    private function deleteAuthor (int $id): bool {
        $stmt = $this->db->prepare("DELETE FROM authors WHERE id = :id");
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