<?php
if (session_status() === PHP_SESSION_NONE) {
    session_name('NG-chat');
    session_start();
}


$db = new PDO("mysql:Host=127.0.0.1;dbname=chat;charset=utf8", 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ,
    PDO::ATTR_ORACLE_NULLS => PDO::NULL_EMPTY_STRING
]);
