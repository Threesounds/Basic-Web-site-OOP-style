<?php

class Database
{
    static $connection;
    public static function connect() {
        self::$connection = new PDO("mysql:host=localhost;dbname=korisnici", "root", "", array(
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        if (!self::$connection) {
            die("Database error");
        }
    }
}