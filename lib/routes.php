<?php

$app->get('/', 'LibraryCtrl:home');

$app->get('/books', 'BooksCtrl:show');
$app->get('/authors', 'AuthorsCtrl:show');
$app->get('/purchases', 'PurchasesCtrl:show');

$app->get('/book/{id:\d+}', 'BooksCtrl:showBook');
$app->get('/author/{id:\d+}', 'AuthorsCtrl:showAuthor');
$app->get('/purchase/{id:\d+}', 'PurchasesCtrl:showPurchase');

$app->post('/books', 'BooksCtrl:add');
$app->post('/authors', 'AuthorsCtrl:add');
$app->post('/purchases', 'PurchasesCtrl:add');

$app->put('/book/{id:\d+}', 'BooksCtrl:replace');
$app->put('/author/{id:\d+}', 'AuthorsCtrl:replace');
$app->put('/purchase/{id:\d+}', 'PurchasesCtrl:replace');

$app->patch('/book/{id:\d+}', 'BooksCtrl:update');
$app->patch('/author/{id:\d+}', 'AuthorsCtrl:update');
$app->patch('/purchase/{id:\d+}', 'PurchasesCtrl:update');

$app->delete('/book/{id:\d+}', 'BooksCtrl:update');
$app->delete('/author/{id:\d+}', 'AuthorsCtrl:update');
$app->delete('/purchase/{id:\d+}', 'PurchasesCtrl:update');

