<?php
session_start();
define('BASE_URL', '/Arcadia/');  // Modifiez selon le chemin racine de votre projet
// Définir une URL de base pour les redirections

// Vérifie si l'utilisateur est connecté
if (!isset($_SESSION['username'])) {
    header("Location: " . BASE_URL . "../connexion.php?error=session_expired");
    exit();
}

// Initialiser ou vérifier l'intégrité de la session
if (!isset($_SESSION['ip_address']) || !isset($_SESSION['user_agent'])) {
    // Enregistre l'adresse IP et le "user agent" à la première connexion
    $_SESSION['ip_address'] = $_SERVER['REMOTE_ADDR'];
    $_SESSION['user_agent'] = $_SERVER['HTTP_USER_AGENT'];
} else {
    // Vérifie que l'IP et le "user agent" n'ont pas changé
    if ($_SESSION['ip_address'] !== $_SERVER['REMOTE_ADDR'] || $_SESSION['user_agent'] !== $_SERVER['HTTP_USER_AGENT']) {
        // Détruit la session en cas de changement
        session_unset();
        session_destroy();
        header("Location: " . BASE_URL . "connexion.php?error=session_invalid");
        exit();
    }
}

// Renouvellement de l'ID de session pour éviter le vol de session
if (!isset($_SESSION['session_created'])) {
    $_SESSION['session_created'] = time();
} elseif (time() - $_SESSION['session_created'] > 1800) { // 30 minutes
    session_regenerate_id(true); // Regénère un nouvel ID de session
    $_SESSION['session_created'] = time();
}
?>