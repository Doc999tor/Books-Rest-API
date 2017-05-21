<?php

$app->get('/', 'LibraryController:home');

$app->get('/books', 'BooksController:show');
$app->get('/authors', 'AuthorsController:show');
$app->get('/purchases', 'PurchasesController:show');

$app->get('/book/{id:\d+}', 'BooksController:showBook');
$app->get('/author/{id:\d+}', 'AuthorsController:showAuthor');
$app->get('/purchase/{id:\d+}', 'PurchasesController:showPurchase');

$app->post('/books', 'BooksController:add');
$app->post('/authors', 'AuthorsController:add');
$app->post('/purchases', 'PurchasesController:add');

$app->put('/book/{id:\d+}', 'BooksController:replace');
$app->put('/author/{id:\d+}', 'AuthorsController:replace');
$app->put('/purchase/{id:\d+}', 'PurchasesController:replace');

$app->patch('/book/{id:\d+}', 'BooksController:update');
$app->patch('/author/{id:\d+}', 'AuthorsController:update');
$app->patch('/purchase/{id:\d+}', 'PurchasesController:update');

$app->delete('/book/{id:\d+}', 'BooksController:update');
$app->delete('/author/{id:\d+}', 'AuthorsController:update');
$app->delete('/purchase/{id:\d+}', 'PurchasesController:update');

