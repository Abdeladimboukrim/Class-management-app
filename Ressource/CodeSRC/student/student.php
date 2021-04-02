<?php
include_once('database.php');
session_start();
$query = "SELECT * FROM task ORDER BY idtask ";
$results = mysqli_query($link, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">
    <title>Student</title>
</head>
<body>
<div id="navbar-parant"> 
        <div class="img-homme">
            <img src="img/4414963.png" alt="imghomme" class="imghomme">
        </div>
        <div class="nome-class">
            <H4> Class 1</H4>
        </div>
        <div class="config-parant">
            <ul class="config">
                <li class="confgchild"><a  href="#">Brief</a></li>
                <li class="confgchild"><a  href="#">Rendus</a></li>
                <li class="confgchild"><a href="logout.php" name="lougout">logout</a></li>
                               
            </ul>
            <div class="Iconfig">
                <img src="img/4229301.png" class="Iprofil">
            </div>

        </div>
    </div>

<div class="card">

    <h1><?php echo $_SESSION['name'] ?></h1>
    <hr>
    <!-- <p> Date of Birth:</p>  -->
   

        <ol>
                <?php foreach ($results as $row) : ?>

                    <li><span>  brief: <?php echo $row["t.name"];  ?> </span> :  <?php echo $row["Deadline"];  ?> <?php echo '</br>' ."formator id: " ?> <?php echo $row["idformator"];  ?> </li>
                <?php endforeach ?>
        </ol>
     
    


</div>

</body>
</html>