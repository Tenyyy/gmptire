<?php 
include("../database/db.php");

$cid = $_GET['cid'];

$sql = "DELETE FROM clients WHERE ClientName = '$cid'";

if ($conn->query($sql) === TRUE) {
  header('Location: ../php/viewClientPage.php');
}

?>