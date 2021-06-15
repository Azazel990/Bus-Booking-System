<?php

include("connection.php");
error_reporting(0);
header('content-type:image/jpeg');


$opr1 = "SELECT MAX(id) AS id FROM BOOKING";
 $ropr1 =  mysqli_query($con,$opr1);
 $res1 = mysqli_fetch_assoc($ropr1);
 $max_id = $res1['id'];

 $opr2 = "SELECT * FROM BOOKING WHERE id ='$max_id'";
 $ropr2 =  mysqli_query($con,$opr2);
 $res2 = mysqli_fetch_assoc($ropr2);


 $name = $res2['customer_name'];
 $bus_no = $res2['bus_number'];
 $source = $res2['source'];
 $destination = $res2['destination'];
 $DOP = $res2['DOP'];
//  echo $max_id;
//  echo $res2['customer_name'];



$font = "MONTSERRATT.TTF";
$image =imagecreatefromjpeg("sample1.jpg");
$color = imagecolorallocate($image,10,10,10);

imagettftext($image,100,0,200,200,$color,$font,$name);
imagettftext($image,40,0,0,40,$color,$font,$bus_no);
imagettftext($image,40,0,300,300,$color,$font,$source);


imagejpeg($image);
imagedestroy($image);


 
?>
