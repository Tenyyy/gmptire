<?php include('../database/db.php');

$proddesc = $_POST['productdesc'];
$qty = $_POST['productqty'];
$unit= $_POST['productunit'];
$unitprice = $_POST['unitprice'];
$expiry = $_POST['expiry'];
$prodid = $_POST['ProdId'];

$sql = "UPDATE products SET ProdSize='$proddesc', ProdBrandName='$qty', ProdYear='$unit', ProdQuan='$unitprice', ProdDate='$expiry' WHERE ProdId=$prodid";

if ($conn->query($sql) === TRUE) {
    header('Location: ../php/viewProductPage.php');
} else {
  echo "Error updating record: " . $conn->error;
}

$conn->close();
?>