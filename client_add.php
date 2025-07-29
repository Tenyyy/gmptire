<?php include('../database/db.php');

if(isset($_POST{'submit'})){
    $clientname = $_POST['ClientName'];
    $clientplate = $_POST['ClientPlate'];
    $clientaddress = $_POST['ClientDesc'];
   

    $sql = "INSERT INTO `clients` (ClientName, ClientPlate, ClientDesc) 
    VALUES ('$clientname', '$clientplate', '$clientaddress')";
    $result = mysqli_query($conn,$sql); 

    if($result){
        header('Location: ../php/viewClientPage.php');
    }
    else{
        die("Connection failed: " . $conn->connect_error);
    }
}
?> 
