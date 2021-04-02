<?php
<<<<<<< HEAD:Ressource/homme-formator/database.php
$servername = "localhost";
$username = "root";
$password = "";
$db="class_management";

// Create connection
$conn = new mysqli($servername, $username, $password , $db);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";

?>

=======
$conn = mysqli_connect('localhost', 'root', '' , 'class_management');


>>>>>>> main:homme-formator/database.php
