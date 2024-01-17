<?php
$servername = "localhost";
$usernamedb = "id21180522_joshua";
$password = "Joshua87@@";
$dbname = "id21180522_mydatabase";

$Fr = $_POST['Fr'];
$Tr = $_POST['Tr'];
$InfoSup = $_POST['InfoSup'];
$userId = $_POST['userId'];
$langue = $_POST['langue'];
$audio =  $_POST['audio'];

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $usernamedb, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "INSERT INTO Traduction (Fr, Tr, UserId, Langue, InfoSup,Audio) VALUES (?, ?, ?, ?, ?,?)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$Fr, $Tr, $userId, $langue, $InfoSup,$audio]);

    // Récupérer l'ID du nouvel enregistrement
    $lastInsertId = $conn->lastInsertId();
    echo "Enregistrement réussi ! Nouvel ID : $lastInsertId";
} catch (PDOException $e) {
    echo "Une erreur s'est produite : " . $e->getMessage();
}

$conn = null;
?>
