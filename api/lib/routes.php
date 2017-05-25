<?php

$app->get('/', 'LibraryCtrl:home');

$app->get('/books', 'BooksCtrl:getAll');
$app->get('/authors', 'AuthorsCtrl:getAll');
$app->get('/purchases', 'PurchasesCtrl:getAll');

$app->get('/book/{id:\d+}', 'BooksCtrl:getOne');
$app->get('/author/{id:\d+}', 'AuthorsCtrl:getOne');
$app->get('/purchase/{id:\d+}', 'PurchasesCtrl:getOne');

$app->post('/books', 'BooksCtrl:add');
$app->post('/authors', 'AuthorsCtrl:add');
$app->post('/purchases', 'PurchasesCtrl:add');

$app->put('/book/{id:\d+}', 'BooksCtrl:replace');
$app->put('/author/{id:\d+}', 'AuthorsCtrl:replace');
$app->put('/purchase/{id:\d+}', 'PurchasesCtrl:replace');

$app->patch('/book/{id:\d+}', 'BooksCtrl:update');
$app->patch('/author/{id:\d+}', 'AuthorsCtrl:update');
$app->patch('/purchase/{id:\d+}', 'PurchasesCtrl:update');

$app->delete('/book/{id:\d+}', 'BooksCtrl:delete');
$app->delete('/author/{id:\d+}', 'AuthorsCtrl:delete');
$app->delete('/purchase/{id:\d+}', 'PurchasesCtrl:delete');

$app->options('/', 'LibraryCtrl:options');