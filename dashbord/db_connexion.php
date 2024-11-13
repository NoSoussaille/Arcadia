<?php
// db_connection.php

// Paramètres de connexion
$db_host = '127.0.0.1';
$db_user = 'root';
$db_password = 'root';
$db_db = 'zoo_arcadia';
$db_port = 8889;

// Connexion à la base de données
$mysqli = new mysqli($db_host, $db_user, $db_password, $db_db, $db_port);
if ($mysqli->connect_error) {
    die('Erreur de connexion (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}
?>