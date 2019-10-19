<?php

require_once __DIR__ . '/../config/config.php';

function connect()
{
    try {
        return new PDO(
            sprintf('mysql:host=%s;dbname=%s', DATABASE_CONFIG['host'], DATABASE_CONFIG['database']),
            DATABASE_CONFIG['user'],
            DATABASE_CONFIG['password']
        );
        return new PDO('mysql==mariadb;dbname=mag;charset=utf8', 'root', 'root');
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage() . "<br/>";
        die();
    }
}

function getPost()
{
    $db = connect();

    $query = $db->prepare('SELECT * FROM posts');
    $query->execute();

    return $query->fetchAll();
}