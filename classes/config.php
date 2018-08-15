<?php

spl_autoload_register(function($klasa) {
    include $klasa . ".php";
});

Database::connect();

$log_in = new Login();

$reg = new Register_form();

$add = new Add_comments();

$show = new Show_comments();
