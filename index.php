<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require 'vendor/autoload.php';

$config['displayErrorDetails'] = true;

$config['db'] = include 'db_config.php';

// Create app
$app = new \Slim\App(["settings" => $config]);

// Get container
$container = $app->getContainer();

// Register component on container
$container['view'] = function ($container) {
	$view = new \Slim\Views\Twig('views', [
		'cache' => false
	]);
	$view->addExtension(new \Slim\Views\TwigExtension(
		$container['router'],
		$container['request']->getUri()
	));
	return $view;
};

$container['db'] = function ($c) {
	$db = $c['settings']['db'];
	$pdo = new PDO("mysql:host=" . $db['host'] . ";dbname=" . $db['dbname'], $db['user'], $db['pass']);
	// $pdo = new PDO("sqlsrv:Server=" . $db['host'] . ";Database=" . $db['dbname']);
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
	$pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
	$pdo->setAttribute(PDO::ATTR_PERSISTENT, true);
	return $pdo;
};

$container['UsersController'] = function ($container) {
	return new \Lib\Controllers\UsersController($container);
};

require 'lib/routes.php';
$container['routes'] = function ($container) {
	return array_map(function ($route) {
		return ["method" => $route->getMethods()[0], "pattern" => $route->getPattern()];
	}, $container->router->getRoutes(), []);
};

$app->run();