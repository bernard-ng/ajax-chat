<?php
require('init.php');

unset($_SESSION['name']);
$db->prepare('DELETE FROM online WHERE name = ?')->execute([$_SESSION['name']]);
$_SESSION['msg'] = "Vous déconnecter...";
header('location:../index.php');
