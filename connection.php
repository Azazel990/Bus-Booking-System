<?php
$servername = "localhost";
$usernmae = "root";
$password = "";
$dbname = "sessionpractical";

$con = new mysqli($servername,$usernmae,$password,$dbname);

if($con)
{
    // echo("Connection Successful");
}
else
{
   die("COnnection failed".mysqli_connect_error());
}
// if (!function_exists('mysqli_init') && !extension_loaded('mysqli')) {
//     echo 'We don\'t have mysqli!!!';
// } else {
//     echo 'Phew we have it!';
// }


?>