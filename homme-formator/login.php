 
 <?php 

if(isset($_POST['login'])){
        $user = $_POST['username'];
        $pass = $_POST['password'];

        $link = mysql_connect('localhost','root','','class_management');
        $query = mysql_query("SELECT * FROM Colonnes")
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
                    <input name="username" type="text" class="form-control"/>
                    
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
                        <button name="login">
                           Login</button>
                        
                    </div>
        </form>
    
</body>
</html>