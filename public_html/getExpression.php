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

// Récupérer le mot depuis la méthode POST
if (isset($_POST['mot'])) {
    $motRecherche = mysqli_real_escape_string($connexion, $_POST['mot']);

    // Requête SQL pour récupérer aléatoirement un seul enregistrement sans le mot
    $sql = "SELECT * FROM Expression WHERE NOT FIND_IN_SET('$motRecherche', Tr) ORDER BY RAND() LIMIT 1";

    $resultat = mysqli_query($connexion, $sql);

    if ($resultat) {
        // Récupérer l'enregistrement aléatoire qui ne contient pas le mot
        $row = mysqli_fetch_assoc($resultat);
        if ($row) {
            // Convertir l'enregistrement en format JSON
            $resultatJSON = json_encode($row);
            echo $resultatJSON;
        } else {
            echo json_encode(array("message" => "Aucun enregistrement trouvé sans le mot."));
        }
    } else {
        echo json_encode(array("message" => "Erreur lors de l'exécution de la requête : " . mysqli_error($connexion)));
    }
} else {
    echo json_encode(array("message" => "Aucun mot n'a été spécifié via la méthode POST."));
}

// Fermer la connexion à MySQL
mysqli_close($connexion);
?>
