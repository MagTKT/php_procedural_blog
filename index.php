<?php

$requestedPage = '/';

if(isset($_SERVER['REQUEST_URI'])) {
    $requestedPage = explode('?', $_SERVER['REQUEST_URI']);
}

require_once __DIR__ . '/controller/routeur.php';
getRoute();
