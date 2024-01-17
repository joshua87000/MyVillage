<?php
$servername = "localhost";
$usernamedb = "id21180522_joshua";
$password = "Joshua87@@";
$dbname = "id21180522_mydatabase";

$Titre = $_POST['Titre'];
$Contenu = $_POST['Contenu'];
$fic = $_POST['fic'];
$userId = $_POST['userId'];
$langue = $_POST['langue'];

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $usernamedb, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "INSERT INTO Document (Titre,Contenu,IdUser, Langue, FileName) VALUES (?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$Titre, $Contenu, $userId, $langue, $fic]);

    // Récupérer l'ID du nouvel enregistrement
    $lastInsertId = $conn->lastInsertId();
    echo "Enregistrement réussi ! Nouvel ID : $lastInsertId";
} catch (PDOException $e) {
    echo "Une erreur s'est produite : " . $e->getMessage();
}

$conn = null;
?>
