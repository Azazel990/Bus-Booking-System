<?php
ob_start();
session_start();
include("connection.php");
error_reporting(0);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" integrity="undefined" crossorigin="anonymous">

    <title>Admin</title>
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
        font-size: 1.2em;
        border : 2px solid black;
        padding : 10px;
    }
    </style>
</head>
<body>
    <div class="container">
        <?php
            $opr1 = "SELECT * FROM BOOKING WHERE 1";
            $r_opr1 =  mysqli_query($con,$opr1);
            $total = mysqli_num_rows($r_opr1);

            
    if($total)
    {
        ?>
        <br>
        <center><h1>Admin Panel</h1></center>
<br>
        <table class="table">
            <tr style="background-color : #111; color : #fff;">
                <td>ID</td>
                <td>Name</td>
                <td>Bus Number</td>
                <td>Source</td>
                <td>Destination</td>
                <td>DOP</td>
            </tr>
       
    <?php
        while($res1 = mysqli_fetch_assoc($r_opr1))
        {
            echo "<tr>
                <td>".$res1['id']."</td>
                <td>".$res1['customer_name']."</td>
                <td>".$res1['bus_number']."</td>
                <td>".$res1['source']."</td>
                <td>".$res1['destination']."</td>
                <td>".$res1['DOP']."</td>
            </tr>";
        }
    }
        ?>
</table>
        <form action="" method="POST">
            <div class="form-gorup">
                    <h4>Fill in the updates : </h4>

                <label for="" >ID : </label><input type="text" class="form-control" name="id">
                <label for="" >Name : </label><input type="text" class="form-control" name="name">
                <label for="" >Bus Number : </label><input type="text" class="form-control" name="bus_number">
                <label for="" >Source : </label><input type="text" class="form-control" name="source">
                <label for="" >Destination : </label><input type="text" class="form-control" name="destination">
                <label for="" >DOP : </label><input type="date" class="form-control" name="date">
                    <br>
                <input type="submit" value="Submit" name="submit" class="btn btn-success" style="width:100%;">

            </div>
        </form>
    </div>
</body>
</html>

<?php

if(isset($_POST['submit']))
{
    $id = $_POST['id'];
    $new_name = $_POST['name'];
    $new_bus_no = $_POST['bus_number'];
    $new_source = $_POST['source']; 
    $new_destination = $_POST['destination'];
    $new_DOP = $_POST['date'];

    $opr2 = "UPDATE BOOKING SET customer_name = '$new_name',bus_number = '$new_bus_no',source = '$new_source',destination = '$new_destination', DOP = '$new_DOP' WHERE id = '$id'";
    $r_opr2 =  mysqli_query($con,$opr2);
    $res2 = mysqli_fetch_assoc($r_opr2);

    header('location:admin_control_panel.php');
}



?>