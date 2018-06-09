<?php
require('init.php');

if (isset($_GET['lastId']) && !empty($_GET['lastId'])) {
    $lastId = htmlspecialchars($_GET['lastId']);
    $chats = $db->query("SELECT * FROM chat WHERE id > {$lastId} ORDER BY time DESC");
    $chats = $chats->fetchAll();

    echo json_encode($chats);
    exit();
} else {
    http_response_code(500);
    exit();
}
