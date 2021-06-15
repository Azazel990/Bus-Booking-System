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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

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
        <table class="table w3-hoverable">
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
                    <h4>Fill in the updates : </h4><hr>

                <label for="" >ID : </label><input type="text" class="form-control" name="id">
                <label for="" >Name : </label><input type="text" class="form-control" name="name">
                <label for="" >Bus Number : </label><input type="text" class="form-control" name="bus_number">
                <label for="" >Source : </label><input type="text" class="form-control" name="source">
                <label for="" >Destination : </label><input type="text" class="form-control" name="destination">
                <label for="" >DOP : </label><input type="date" class="form-control" name="date">
                    <br>
                <input type="submit" value="Update Record" name="submit" class="w3-button w3-green w3-ripple" style="width:100%;">

            </div>
        </form>
        <br><br>
        <form action="" method="POST">
            <div class="form-group">

                    <h4>Delete an entry</h4><hr>
                    <label for="" >ID : </label><input type="text" class="form-control" name="id_d">
                    <br> <input type="submit" value="Delete Record" name="submit" class="w3-button w3-red w3-ripple" style="width:100%;">
            </div>
            <?php
                if(isset($_POST['submit']))
                {
                    $id = $_POST['id_d'];

                    $opr3 = "DELETE FROM BOOKING WHERE id = '$id'";
                    $r_opr3 =  mysqli_query($con,$opr3);
                    header('location:admin_control_panel.php');
                }
            ?>
        </form>
                <br>
        <form action="" method="POST">
            <div class="form-gorup">
                        <h4>Add a record : </h4><hr>

                    <label for="" >ID : </label><input type="text" class="form-control" name="id1">
                    <label for="" >Name : </label><input type="text" class="form-control" name="name1">
                    <label for="" >Bus Number : </label><input type="text" class="form-control" name="bus_number1">
                    <label for="" >Source : </label><input type="text" class="form-control" name="source1">
                    <label for="" >Destination : </label><input type="text" class="form-control" name="destination1">
                    <label for="" >DOP : </label><input type="date" class="form-control" name="date1">
                        <br>
                        <br> <input type="submit" value="Add Record" name="submit" class="w3-button w3-blue w3-ripple" style="width:100%;">
                
                </div>

                <?php
                    if(isset($_POST['submit']))
                    {
                        $id = $_POST['id1'];
                        $name = $_POST['name1'];
                        $bus_no = $_POST['bus_number1'];
                        $source = $_POST['source1'];
                        $destination = $_POST['destination1'];
                        $DOP = $_POST['date1'];
                        
                        $opr4 = "INSERT INTO BOOKING VALUES('$id','$name','$bus_no','$source','$destination','$DOP')";
                        $r_opr4 =  mysqli_query($con,$opr4);

                        $opr5 = "INSERT INTO CUSTOMER VALUES ('$id','$source','$destination','$DOP')";
                        $r_opr5 =  mysqli_query($con,$opr5);
                        echo '<script>alert("Operation Successful")</script>';
                        header('location:admin_control_panel.php');
                    }
                ?>
                <br>
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
