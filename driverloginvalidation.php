<?php
session_start();

$con = mysqli_connect('localhost','root','');
if($con){
    echo "connection sucessful";
}else{
    echo "no connection";
}

mysqli_select_db($con,'sessionpractical');

$driver_name = $_POST['user'];
$password = $_POST['password'];

$d = "select * from driver where driver_name = '$driver_name' && password = '$password' ";

$result = mysqli_query($con,$d);

$num = mysqli_num_rows($result);

if($num == 1){
    $_SESSION['username'] = $name;
    header('location:driver.php');
    
}else{
    $_SESSION['error'] = "not a driver";
    header('location:main.php');
   
}


?>