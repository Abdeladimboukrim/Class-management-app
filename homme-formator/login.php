<?php
session_start();
include_once('db.php');
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

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login-class-management</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

        <form action="login.php" method="POST">

            <fieldset class="baoquat">
                <legend align="center">
                    <b>Login</b>
                </legend>
                <div class="dangky">
                    <label>Username :</label>
                    </br>
                    <input name="id" type="text" class="form-control" />
                    
                </div>

                <div class="dangky">
                    <label>Password :</label>
                    </br>
                    <input name="pw" type="password" class="form-control" />
                    
                </div>

                <div class="dangky">
                    <input type="checkbox"/>
                    Remember me ?
                    
                </div>

                <div class="button">
                        <button>
                           Login</button>
                        <button>
                           Register</button>
                    </div>

                
        </form>
    
</body>
</html>