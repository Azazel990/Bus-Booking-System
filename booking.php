<?php
ob_start();
include("connection.php");
error_reporting(0);
session_start();

//Getting the recent customer id,source & destination;
 $opr1 = "SELECT MAX(customer_id) AS customer_id FROM CUSTOMER";
 $r_opr1 =  mysqli_query($con,$opr1);
 $res1 = mysqli_fetch_assoc($r_opr1);
 $max_id =  $res1['customer_id'];
 
 $opr2 = "SELECT source FROM CUSTOMER WHERE customer_id = '$max_id'";
 $r_opr2 =  mysqli_query($con,$opr2);
 $res2 = mysqli_fetch_assoc($r_opr2);

 $source = $res2['source'];

 $opr3 = "SELECT destination FROM CUSTOMER WHERE customer_id = '$max_id'";
 $r_opr3 =  mysqli_query($con,$opr3);
 $res3 = mysqli_fetch_assoc($r_opr3);

 $destination = $res3['destination'];
 
// echo "Welcome ".$max_id." ".$source." ".$destination."<br/>";

//fetching the source and destination id

$opr4 = "SELECT station_id FROM MAP WHERE station_name = '$source'";
$r_opr4 =  mysqli_query($con,$opr4);
$res4 = mysqli_fetch_assoc($r_opr4);

$source_id = $res4['station_id'];    

$opr5 = "SELECT station_id FROM MAP WHERE station_name = '$destination'";
$r_opr5 =  mysqli_query($con,$opr5);
$res5 = mysqli_fetch_assoc($r_opr5);

$destination_id = $res5['station_id'];   

// echo "Welcome ".$source_id." ".$destination_id."<br/>";

$opr_d = "SELECT date FROM CUSTOMER WHERE customer_id = '$max_id'"; 
$r_opr_d =  mysqli_query($con,$opr_d);
$res_d = mysqli_fetch_assoc($r_opr_d);

$date = $res_d['date'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" integrity="undefined" crossorigin="anonymous">
    <title>Document</title>
    <style>
    body
    {
        background: #fecd13;
    }
    .container
    {
        background: #fff;
        margin-top: 5%;
    }
    table
    {
        border : 2px solid black; 
    }
    tr
    {
        border : 2px solid black;
    }
    td
    {
        font-size: 2em;
        border : 2px solid black;
        padding : 10px;
    }
    </style>
</head>
<body>
    <div class="container">
    <?php    
//searching for buses

if($source_id < $destination_id) //when the customer is going from left to right 
{
    $opr6 = "SELECT bus_no,source,destination FROM BUSES WHERE source_id <= '$source_id' && destination_id >= '$destination_id'";
    $r_opr6 =  mysqli_query($con,$opr6);
    $total = mysqli_num_rows($r_opr6);
    
    if($total)
    {
        ?>
        <br><br>
        <table class="table">
            <tr style="background-color : #111; color : #fff;">
                <td>Bus Number</td>
                <td>Source</td>
                <td>Destination</td>
            </tr>
       
    <?php
        while($res6 = mysqli_fetch_assoc($r_opr6))
        {
            echo "<tr>
                <td>".$res6['bus_no']."</td>
                <td>".$res6['source']."</td>
                <td>".$res6['destination']."</td>
            </tr>";
        }
    }
    else
    {
        echo "No Buses Available";
    }
}
else //when customer is going from right to left
{
    $opr7 = "SELECT bus_no,source,destination FROM BUSES WHERE source_id >= '$source_id' && destination_id <= '$destination_id'";
    $r_opr7 =  mysqli_query($con,$opr7);
    $total = mysqli_num_rows($r_opr7);
    if($total)
    {
        ?>
        <br><br>
        <table class="table">
            <tr style="background-color : #111; color : #fff;">
                <td>Bus Number</td>
                <td>Source</td>
                <td>Destination</td>
            </tr>
        
    <?php
            while($res7 = mysqli_fetch_assoc($r_opr7))
            {
                echo "<tr>
                    <td>".$res7['bus_no']."</td>
                    <td>".$res7['source']."</td>
                    <td>".$res7['destination']."</td>
                </tr>";
            }
    }
    else
    {
        echo "No Buses Available";
    }
}
?>
</table>
<br>
<form action="" method="POST">
    <h2>Please fill the details</h2>
    <div class="form-group">
    <label for="">Name : </label><input name="name" class="form-control">
    <label for="">Bus Number : </label><input type="text" name="bus_number" class="form-control"><br>
    <input type="submit" value="Submit" name="submit" class="btn btn-success" style="width:100%;">
    </div>
    <?php
    
    if(isset($_POST['submit']))
    {
        $name = $_POST['name'];
        $bus_number = $_POST['bus_number'];
        // $date = date(DATE_ATOM);
        $opr8 = "INSERT INTO BOOKING VALUES ('$max_id','$name','$bus_number','$source','$destination','$date')";
        $r_opr8 =  mysqli_query($con,$opr8);
        $res8 = mysqli_fetch_assoc($r_opr8);
        
        if($r_opr8)
        {
            header('location:ticket.php');
        }
        
    }
?>
</form>
<br><br>
    </div>
</body>
</html>


