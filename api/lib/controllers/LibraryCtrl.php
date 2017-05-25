<?php
namespace Lib\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class LibraryCtrl extends Controller {
    public function home(Request $request, Response $response): Response {
        return $response->write(file_get_contents('views/home.html'));
    }

    public function options(Request $request, Response $response) {
        $routes = $this->container->get('routes');
        $methods = implode(',', array_unique(array_map(function ($route) {
            return $route['method'];
        }, $routes)));
        $response = $response->withHeader('Allow', $methods);
        return $response->withJson($routes);
    }
}