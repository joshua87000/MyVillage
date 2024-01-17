<?php
// Vérifiez si les données POST ont été soumises
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérez l'e-mail de l'utilisateur et le nombre de points à ajouter depuis le formulaire
    $email = $_POST["email"];
    $pointsToAdd = intval($_POST["pointsToAdd"]); // Assurez-vous que le nombre de points est un entier

    // Connexion à la base de données MySQL (remplacez ces valeurs par les vôtres)
    $servername = "localhost";
$username = "id21180522_joshua";
$password = "Joshua87@@";
$dbname = "id21180522_mydatabase";


    // Créez une connexion
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Vérifiez si la connexion a réussi
    if ($conn->connect_error) {
        die("La connexion à la base de données a échoué : " . $conn->connect_error);
    }

    // Requête SQL pour mettre à jour le nombre de points de l'utilisateur
    $sql = "UPDATE User SET Score = Score + ? WHERE Email = ?";
    $stmt = $conn->prepare($sql);

    // Vérifiez si la préparation de la requête a réussi
    if ($stmt === false) {
        die("Erreur de préparation de la requête : " . $conn->error);
    }

    // Liez les paramètres à la requête
    $stmt->bind_param("is", $pointsToAdd, $email);

    // Exécutez la requête
    if ($stmt->execute()) {
        echo "Les points ont été ajoutés avec succès à l'utilisateur.";
    } else {
        echo "Une erreur est survenue lors de l'ajout des points : " . $conn->error;
    }

    // Fermez la connexion
    $stmt->close();
    $conn->close();
}
?>
