<?php
include_once('database.php');
session_start();
if (isset($_SESSION['name'])) {
    header("location: index.php");
}
if(isset($_POST['login'])){
$name=$_POST['name'];
$password=$_POST['password'];
$query_log="SELECT * FROM formator WHERE name='$name' AND password='$password'";
$result=mysqli_query($conn,$query_log);
if(mysqli_num_rows($result) >0){
    $_SESSION['name']=$name;
    header("location:student.php");
} 
else{
    echo "Enter nom ou email correct! ";
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
                 <input name="name" type="text" class="form-control" />
             </div>
             <div class="dangky">
                 <label>Password :</label>
                 </br>
                 <input name="password" type="password" class="form-control" />
             </div>
             <div class="dangky">
                 <input type="checkbox" />
                 Remember me ?
             </div>
             <div class="button">
                 <button>
                     Login</button>
             </div>
     </form>
 </body>

 </html>