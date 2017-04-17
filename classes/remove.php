<?php
/*session_start();
require "config.php";
    $del=Database::$connection->query("DELETE FROM komentari WHERE login = '$_SESSION[username]'");
    if($del) {
    	header("Location: ". $_SERVER['HTTP_REFERER']);
} else{echo 'ДОШЛО ЈЕ ДО ГРЕШКЕ ПРИЛИКОМ БРИСАЊА КОМЕНТАРА';}*/require "config.php";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    Database::$connection->query("DELETE FROM komentari WHERE id = '$id'");
    header("Location: ". $_SERVER['HTTP_REFERER']);
}

