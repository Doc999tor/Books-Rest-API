<?php
namespace Lib\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class LibraryCtrl extends Controller {
    public function home(Request $request, Response $response): Response {
        return $response->write(file_get_contents('views/home.html'));
    }
}