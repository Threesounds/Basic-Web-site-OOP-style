<?php
$id = isset($_SESSION['user_id']); 
$user_id = Database::$connection->query("SELECT * FROM korisnici where id='$id'");
$user = $user_id->fetchObject('Cookies');
 