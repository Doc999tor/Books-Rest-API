<?php
namespace Lib\Controllers;

use \Slim\Container as Container;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class BooksCtrl extends Controller {
    public function getAll(Request $request, Response $response): Response {
        $response = $response->withHeader('X-Robots-Tag', 'noindex, nofollow');
        return $response->withJson($this->getBooks());
    }
    public function getOne(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $response = $response->withHeader('X-Robots-Tag', 'noindex, nofollow');
        return $response->withJson($this->getBook($id));
    }
    public function add(Request $request, Response $response): Response {
        $body = $request->getParsedBody();

        if ($this->post($body['name'], !empty($body['poster']) ? $body['poster'] : null, !empty($body['description']) ? $body['description'] : null, $body['author_id'])) {
            return $response->withStatus(201);
        } else {
            $response = $response->getBody()->write("{message: adding new user failed}");
            $response = $response->withStatus(422);
            return $response;
        }
    }
    public function replace(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $body = $request->getParsedBody();
        $this->replaceBook($id, $body['name'], !empty($body['poster']) ? $body['poster'] : null, !empty($body['description']) ? $body['description'] : null, $body['author_id']);
        return $response->withStatus(200);
    }
    public function update(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $body = $request->getParsedBody();
        $body = call_user_func_array('array_merge', array_map(function ($key, $value) {
            return [filter_var($key, FILTER_SANITIZE_STRING) => filter_var($value, FILTER_SANITIZE_STRING)];
        }, array_keys($body), $body));

        $this->patchBook($id, $body);
        return $response->withStatus(200);
    }
    public function delete(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $this->deleteBook($id);
        return $response->withStatus(200);
    }

    private function getBooks (): array {
        $stmt = $this->db->query("
            SELECT b.id, b.name, b.poster, b.description, a.name as author_name
            FROM books b
            JOIN authors a ON b.author_id = a.id
            LIMIT 1000
        ");
        if ($stmt->execute()) {
            $result = $stmt->fetchAll();
        } else { var_dump($this->db->errorInfo()); }
        return $result;
    }
    private function getBook ($id): array {
        $stmt = $this->db->prepare("
            SELECT b.id, b.name, b.poster, b.description, a.name as author_name
            FROM books b
            JOIN authors a ON b.author_id = a.id
            WHERE b.id = :id
            LIMIT 1
        ");
        $stmt->bindParam(':id', $id, \PDO::PARAM_INT);
        if ($stmt->execute()) {
            $result = $stmt->fetch();
        } else { var_dump($this->db->errorInfo()); }
        return $result;
    }
    private function post (string $name, $poster, $description, int $author_id): bool {
        $stmt = $this->db->prepare("INSERT INTO books VALUES (null, :name, :poster, :description, :author_id)");
        $stmt->bindValue(':name', $name, \PDO::PARAM_STR);
        $stmt->bindValue(':poster', $poster, \PDO::PARAM_STR);
        $stmt->bindValue(':description', $description, \PDO::PARAM_STR);
        $stmt->bindValue(':author_id', $author_id, \PDO::PARAM_INT);
        try {
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            var_dump($this->db->errorInfo());
            return false;
        }
    }
    private function replaceBook (int $id, string $name, $poster, $description, int $author_id): bool {
        $stmt = $this->db->prepare("UPDATE books SET name = :name, poster = :poster, description = :description, author_id = :author_id WHERE id = :id");
        $stmt->bindParam(':id', $id, \PDO::PARAM_INT);
        $stmt->bindParam(':name', $name, \PDO::PARAM_STR);
        $stmt->bindParam(':poster', $poster, \PDO::PARAM_STR);
        $stmt->bindParam(':description', $description, \PDO::PARAM_STR);
        $stmt->bindParam(':author_id', $author_id, \PDO::PARAM_INT);
        try {
            $stmt->execute();
        } catch (PDOException $e) {
            var_dump($this->db->errorInfo());
        }
        return true;
    }
    private function patchBook (int $id, array $data): bool {
        $set_string = implode(', ', array_map(function ($key) {
            return "{$key} = :{$key}";
        }, array_keys($data)));

        $stmt = $this->db->prepare("UPDATE books SET {$set_string} WHERE id = :id");
        echo "UPDATE books SET {$set_string} WHERE id = :id";
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
    private function deleteBook (int $id): bool {
        $stmt = $this->db->prepare("DELETE FROM books WHERE id = :id");
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