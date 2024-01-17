<?php
$servername = "localhost";
$usernamedb = "id21180522_joshua";
$password = "Joshua87@@";
$dbname = "id21180522_mydatabase";

// Connexion à la base de données
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $usernamedb, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Requête pour le nombre total de traductions pour une langue donnée
    $langue = $_GET['langue'];
    $stmt1 = $conn->prepare("SELECT COUNT(*) AS nombre_de_traductions FROM Traduction WHERE Langue = ?");
    $stmt1->execute([$langue]);
    $result1 = $stmt1->fetch(PDO::FETCH_ASSOC);

    // Requête pour le nombre d'utilisateurs distincts pour une langue donnée
    $stmt2 = $conn->prepare("SELECT COUNT(DISTINCT UserId) AS nombre_de_utilisateurs_distincts FROM Traduction WHERE Langue = ?");
    $stmt2->execute([$langue]);
    $result2 = $stmt2->fetch(PDO::FETCH_ASSOC);

    // Requête pour le nombre de traductions avec Audio = 1 pour une langue donnée
    $stmt3 = $conn->prepare("SELECT COUNT(*) AS nombre_de_traductions_audio FROM Traduction WHERE Langue = ? AND Audio = 1");
    $stmt3->execute([$langue]);
    $result3 = $stmt3->fetch(PDO::FETCH_ASSOC);

    // Mettre les résultats dans un tableau JSON
    $resultats = [
        "nombre_de_traductions" => $result1['nombre_de_traductions'],
        "nombre_de_utilisateurs_distincts" => $result2['nombre_de_utilisateurs_distincts'],
        "nombre_de_traductions_audio" => $result3['nombre_de_traductions_audio']
    ];

    // Retourner les résultats au format JSON
    header('Content-Type: application/json');
    echo json_encode($resultats);
} catch (PDOException $e) {
    echo "Une erreur s'est produite : " . $e->getMessage();
}

// Fermer la connexion à la base de données
$conn = null;
?>
