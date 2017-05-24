<?php
namespace Lib\Controllers;

use \Slim\Container as Container;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class PurchasesCtrl extends Controller {
    public function getAll(Request $request, Response $response): Response {
        $response = $response->withHeader('X-Robots-Tag', 'noindex, nofollow');
        return $response->withJson($this->getPurchases());
    }
    public function getOne(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $response = $response->withHeader('X-Robots-Tag', 'noindex, nofollow');
        return $response->withJson($this->getPurchase($id));
    }
    public function add(Request $request, Response $response): Response {
        $body = $request->getParsedBody();

        if ($this->post($body['buyer_name'], $body['book_id'])) {
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
        $this->replacePurchase($id, $body['buyer_name'], $body['book_id']);
        return $response->withStatus(200);
    }
    public function update(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $body = $request->getParsedBody();
        $body = call_user_func_array('array_merge', array_map(function ($key, $value) {
            return [filter_var($key, FILTER_SANITIZE_STRING) => filter_var($value, FILTER_SANITIZE_STRING)];
        }, array_keys($body), $body));

        $this->patchPurchase($id, $body);
        return $response->withStatus(200);
    }
    public function delete(Request $request, Response $response, $args): Response {
        $id = (int)filter_var($args['id'], FILTER_SANITIZE_NUMBER_INT);
        $this->deletePurchase($id);
        return $response->withStatus(200);
    }

    private function getPurchases (): array {
        $stmt = $this->db->query("
            SELECT p.id, p.buyer_name, b.name as book_name, a.name as author_name, p.added
            FROM purchases p
            JOIN books b   ON b.id = p.book_id
            JOIN authors a ON b.author_id = a.id
            ORDER BY p.added DESC
            LIMIT 1000
        ");
        if ($stmt->execute()) {
            $result = $stmt->fetchAll();
        } else { var_dump($this->db->errorInfo()); }
        return $result;
    }
    private function getPurchase ($id): array {
        $stmt = $this->db->prepare("
            SELECT p.id, p.buyer_name, b.name as book_name, a.name as author_name, p.added
            FROM purchases p
            JOIN books b   ON b.id = p.book_id
            JOIN authors a ON b.author_id = a.id
            WHERE p.id = :id
            LIMIT 1
        ");
        $stmt->bindParam(':id', $id, \PDO::PARAM_INT);
        if ($stmt->execute()) {
            $result = $stmt->fetch();
        } else { var_dump($this->db->errorInfo()); }
        return $result;
    }
    private function post (string $buyer_name, int $book_id): bool {
        $stmt = $this->db->prepare("INSERT INTO purchases VALUES (null, :buyer_name, :book_id, null)");
        $stmt->bindValue(':buyer_name', $buyer_name, \PDO::PARAM_STR);
        $stmt->bindValue(':book_id', $book_id, \PDO::PARAM_INT);
        try {
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            var_dump($this->db->errorInfo());
            return false;
        }
    }
    private function replacePurchase (int $id, string $name, $poster, $description, int $author_id): bool {
        $stmt = $this->db->prepare("UPDATE purchases SET buyer_name = :buyer_name, book_id = :book_id, added = NOW() WHERE id = :id");
        $stmt->bindParam(':id', $id, \PDO::PARAM_INT);
        $stmt->bindParam(':buyer_name', $buyer_name, \PDO::PARAM_STR);
        $stmt->bindParam(':book_id', $book_id, \PDO::PARAM_STR);
        try {
            $stmt->execute();
        } catch (PDOException $e) {
            var_dump($this->db->errorInfo());
        }
        return true;
    }
    private function patchPurchase (int $id, array $data): bool {
        $set_string = implode(', ', array_map(function ($key) {
            return "{$key} = :{$key}";
        }, array_keys($data)));

        $stmt = $this->db->prepare("UPDATE purchases SET {$set_string} WHERE id = :id");
        echo "UPDATE purchases SET {$set_string} WHERE id = :id";
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
    private function deletePurchase (int $id): bool {
        $stmt = $this->db->prepare("DELETE FROM purchases WHERE id = :id");
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