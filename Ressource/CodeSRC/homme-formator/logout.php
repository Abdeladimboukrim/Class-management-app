<?php
include_once('database.php');
session_start();
unset($_SESSION['name']);
$_SESSION['message']="You are now logged out";
header("location: login.php");
?>