<?php
session_start();
include_once('database.php');
if (count($_POST) > 0) {
    $query  = "SELECT * FROM register WHERE username = '" . $_POST["username"] . "' AND password = '" . $_POST["password"] . "' ";
    $result = mysqli_query($con, $query);
    $row    = mysqli_fetch_array($result);
    if (is_array($row)) {
        $_SESSION["id"] = $row['id'];
        $_SESSION["username"] = $row['username'];
        $_SESSION["pseudo"] = $row['pseudo'];
        $_SESSION["password"] = $row['password'];
        $_SESSION["email"] = $row['email'];
        header("Location:home.php");
    }
}
?>