<?php
$servername = "localhost";
$usernamedb = "id21180522_joshua";
$password = "Joshua87@@";
$dbname = "id21180522_mydatabase";

$email = $_POST['email'];
$username = $_POST['username'];

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $usernamedb, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Vérifier si l'utilisateur existe déjà par son e-mail
    $checkSql = "SELECT COUNT(*) as count FROM User WHERE Email = ?";
    $checkStmt = $conn->prepare($checkSql);
    $checkStmt->execute([$email]);
    $result = $checkStmt->fetch(PDO::FETCH_ASSOC);

    if ($result['count'] > 0) {
        echo "Un utilisateur avec cet e-mail existe déjà.";
    } else {
        // Insérer l'utilisateur s'il n'existe pas déjà
        $sql = "INSERT INTO User (Email, Username) VALUES (?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([$email, $username]);
    
        echo "Enregistrement réussi !";
    }
} catch (PDOException $e) {
    echo "Une erreur s'est produite : " . $e->getMessage();
}

$conn = null;
?>
