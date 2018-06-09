<?php
require('init.php');

if(isset($_SESSION['name'])) {
    if (isset($_POST['message'])) {
        if (!empty($_POST['message'])) {

            $message = htmlspecialchars($_POST['message']);
            $username = htmlspecialchars($_SESSION['name']);

           try {
                $req = $db->prepare('INSERT INTO chat(message, name, time) VALUES (?,?, NOW())');
                $res = $req->execute([$message, $username]);

                if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) === 'xmlhttprequest') {
                    $id = $db->lastInsertId();
                    $data = [
                        'name' => $username,
                        'message' => $message,
                        'id' => $id
                    ];

                    echo json_encode($data);
                    exit();
                } else {
                    $chats = $db->query('SELECT * FROM chat ORDER BY time DESC LIMIT 50');
                    $_SESSION['msg'] = 'Commentaire posté...';
                }
           } catch(Exception $e) {
               $_SESSION['msg'] = "Oups une erreur est survenue";
               header('location: ../index.php');
               exit();
           }
        } else {
            $chats = $db->query('SELECT * FROM chat ORDER BY time DESC LIMIT 50');
            $_SESSION['msg'] = 'Remplissez votre message...';
        }
    } else {
        $chats = $db->query('SELECT * FROM chat ORDER BY time DESC LIMIT 50');
    }
} else {
    $_SESSION['message'] = 'Connectez-vous pour continuer';
    header('location: ../index.php');
    exit();
}
