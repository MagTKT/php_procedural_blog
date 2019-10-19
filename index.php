<?php

$requestedPage = '/';

if(isset($_SERVER['REQUEST_URI'])) {
    $requestedPage = $_SERVER['RESQUEST_URI'];
    $requestedPage = explode('?', $requestedPage);
}

switch ($requestedPage[0]) {
    case '/home':
        require_once(__DIR__ . '/controller/blogController.php');
        break;
    default:
        require_once(__DIR__ . '/View/404.php');
}