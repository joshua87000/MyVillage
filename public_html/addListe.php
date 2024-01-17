<?php
// Informations de connexion à la base de données
$serveur = "localhost";
$utilisateur = "id21180522_joshua";
$motdepasse = "Joshua87@@";
$basededonnees = "id21180522_mydatabase";


// Établir la connexion à MySQL
$connexion = mysqli_connect($serveur, $utilisateur, $motdepasse, $basededonnees);

// Vérifier la connexion
if (!$connexion) {
    die("La connexion à la base de données a échoué : " . mysqli_connect_error());
}

// Chemin vers votre fichier TXT
$fichier_txt = "exp.txt";

// Ouvrir le fichier en lecture
$fichier = fopen($fichier_txt, "r");

if ($fichier) {
    while (($ligne = fgets($fichier)) !== false) {
        // Échapper les caractères spéciaux et préparer la requête d'insertion
        $phrase = mysqli_real_escape_string($connexion, trim($ligne));
        $sql = "INSERT INTO Expression (Mots) VALUES ('$phrase')";

        // Exécuter la requête
        if (mysqli_query($connexion, $sql)) {
            echo "Phrase insérée avec succès : $phrase<br>";
        } else {
            echo "Erreur lors de l'insertion de la phrase : $phrase<br>";
        }
    }

    // Fermer le fichier
    fclose($fichier);
} else {
    echo "Impossible d'ouvrir le fichier.";
}

// Fermer la connexion à MySQL
mysqli_close($connexion);
?>
