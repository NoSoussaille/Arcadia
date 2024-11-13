<?php 
define('BASE_URL', '/Arcadia/');  // Modifiez selon le chemin racine de votre projet

$db_host = '127.0.0.1';
$db_user = 'root';
$db_password = 'root';
$db_db = 'zoo_arcadia';
$db_port = 8889;

// Initialisation de la connexion
$mysqli = new mysqli($db_host, $db_user, $db_password, $db_db, $db_port);

// Vérification de la connexion
if ($mysqli->connect_error) {
    die('Erreur de connexion (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}
?>