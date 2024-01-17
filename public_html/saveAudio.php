<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    echo '<pre>';
    print_r($_FILES);
    echo '</pre>';

    if (isset($_FILES["audioData"])) {
        $audioFile = $_FILES["audioData"];
        $tempFileName = $audioFile["tmp_name"];
        
        echo $audioFile;
        echo $tempFileName;

        // Assurez-vous que le dossier de destination existe et a les bonnes autorisations
        $destinationFolder = "votre_dossier_de_destination/";
        if (!file_exists($destinationFolder)) {
            mkdir($destinationFolder, 0777, true);
        }

        // Déplacez le fichier audio vers le dossier de destination
        $destinationPath = $destinationFolder . $audioFile["name"];
        move_uploaded_file($tempFileName, $destinationPath);

        // Faites d'autres traitements si nécessaire
        // ...

        echo "Enregistrement audio réussi.";
    } else {
        echo "Aucun fichier audio trouvé.";
    }
}
?>
