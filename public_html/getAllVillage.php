<?php
// Connexion à la base de données
$servername = "localhost";
$username = "id21180522_joshua";
$password = "Joshua87@@";
$dbname = "id21180522_mydatabase";

$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifier la connexion
if ($conn->connect_error) {
    die("La connexion à la base de données a échoué : " . $conn->connect_error);
}


    // Requête SQL pour récupérer toutes les traductions pour la langue spécifiée
    $sql = "SELECT * FROM `Village` WHERE 1";
    
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Convertir le résultat en un tableau associatif
        $traductions = array();
        while ($row = $result->fetch_assoc()) {
            $traductions[] = $row;
        }

        // Renvoyer les traductions au format JSON
        echo json_encode($traductions);
    } else {
        echo "Aucune Village trouvé";
    }

// Fermer la connexion à la base de données
$conn->close();
?>
