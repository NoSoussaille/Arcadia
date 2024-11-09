<?php
// Détails de connexion à la base de données
$db_host = '127.0.0.1';
$db_user = 'root';
$db_password = 'root';
$db_db = 'zoo_arcadia';
$db_port = 8889;

// Connexion à la base de données
$mysqli = new mysqli($db_host, $db_user, $db_password, $db_db, $db_port);

// Vérifie la connexion
if ($mysqli->connect_error) {
    die('Erreur de connexion (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}

// Vérifie si le formulaire a été soumis
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Vérifie que les champs username et mdp sont bien remplis
    if (!empty($_POST['username']) && !empty($_POST['mdp'])) {
        $username = $_POST['username'];
        $password = $_POST['mdp'];

        // Prépare la requête pour vérifier les identifiants
        $stmt = $mysqli->prepare("SELECT * FROM utilisateurs WHERE username = ? AND mdp = ?");
        $stmt->bind_param("ss", $username, $password);
        $stmt->execute();
        $result = $stmt->get_result();

        // Vérifie si les identifiants sont corrects
        if ($result->num_rows > 0) {
            // Connexion réussie, redirection vers dashboard.php
            header("Location: dashbord/dashbord.php");
            exit(); // Arrête l'exécution du script après la redirection
        } else {
            // Identifiants incorrects, redirection avec erreur
            header("Location: connexion.php?error=1");
            exit();
        }

        // Ferme la requête
        $stmt->close();
    } else {
        // Champs manquants, redirection avec erreur
        header("Location: connexion.php?error=1");
        exit();
    }
}

// Ferme la connexion à la base de données
$mysqli->close();
?>