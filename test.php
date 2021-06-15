<?php
include("connection.php");
error_reporting(0);

$q = "SELECT * FROM MAP WHERE station_id = '100' ";

$data = mysqli_query($con,$q);

echo(mysqli_num_rows($data));

if(mysqli_num_rows($data))
{
    $result = mysqli_fetch_assoc($data);
    echo $result['station_name'];
}
?>