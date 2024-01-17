<?php
$servername = "localhost";
$usernamedb = "id21180522_joshua";
$password = "Joshua87@@";
$dbname = "id21180522_mydatabase";

$lat = $_POST['lat'];
$long = $_POST['long'];
$user = $_POST['user'];
$nom = $_POST['nom'];


try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $usernamedb, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


  
      
        $sql = "INSERT INTO Village (Nom, Lat, Longitude, User) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([$nom, $lat,$long,$user]);
    
        echo "Enregistrement réussi !";
    
} catch (PDOException $e) {
    echo "Une erreur s'est produite : " . $e->getMessage();
}

$conn = null;
?>
