<?php
require('init.php');

if (isset($_POST['name'])) {
    if(!empty($_POST['name'])) {
        $name = htmlspecialchars($_POST['name']);
        try {
            $req = $db->query("SELECT * FROM online WHERE name = '{$name}'");
            $exists = $req->fetch();

            if (!$exists) {
                $db->prepare('INSERT INTO online(name) VALUES(?)')->execute([$name]);
                $_SESSION['name'] = $name;
                $_SESSION['msg'] = "Vous êtes connecté...";
                header('location: ../chat.php');
                exit();
            } else {
                $_SESSION['msg'] = "ce nom est déjà utilisé...";
                header('location: ../index.php');
                exit();
            }
        } catch (Exception $e) {
            die($e->getMessage());
            $_SESSION['msg'] = "Oups une erreur est survenue";
            header('location: ../index.php');
            exit();
        }
    } else {
        $_SESSION['msg'] = "Entrez votre nom pour chater...";
    }

}
