<?php
$servername = "localhost";
$usernamedb = "id21180522_joshua";
$password = "Joshua87@@";
$dbname = "id21180522_mydatabase";



if (isset($_POST['email']) && !empty($_POST['email'])) {
    $email = $_POST['email'];
    $choice = 1;
} 

if (isset($_POST['UserId']) && !empty($_POST['UserId'])) {
    $Id = $_POST['UserId'];
    $choice = 2;
   
} 

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $usernamedb, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    if($choice == 1)
{
    $sql = "SELECT Username FROM User WHERE Email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$email]);
   
}
else
{
    $sql = "SELECT Username FROM User WHERE Id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$Id]);
}

    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($result) {
        $username = $result['Username'];
        echo $username; // Retourne l'username correspondant à l'email
    } else {
        echo "Aucun utilisateur trouvé avec cet emails";
    }
} catch (PDOException $e) {
    echo "Une erreur s'est produite : " . $e->getMessage();
}

$conn = null;
?>
