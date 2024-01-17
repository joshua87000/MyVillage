<?php
$servername = "localhost";
$usernamedb = "id21180522_joshua";
$password = "Joshua87@@";
$dbname = "id21180522_mydatabase";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["search_query"])) {
        $searchQuery = $_POST["search_query"];
        $langue = $_POST["langue"];

        try {
            $conn = new PDO("mysql:host=$servername;dbname=$dbname", $usernamedb, $password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            
            // Requête SQL pour rechercher des traductions avec 'Fr' contenant la chaîne de caractères
            $sql = "SELECT * FROM Traduction WHERE  Fr LIKE :search_query AND Langue = '$langue'";
            $stmt = $conn->prepare($sql);
            $stmt->bindValue(":search_query", "%" . $searchQuery . "%", PDO::PARAM_STR);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

            // Retourner les résultats en JSON
            header('Content-Type: application/json');
            echo json_encode($results);
        } catch (PDOException $e) {
            echo "Une erreur s'est produite : " . $e->getMessage();
        }

        // Fermer la connexion à la base de données
        $conn = null;
    }
}
?>
