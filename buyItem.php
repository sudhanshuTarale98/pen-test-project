<?php
session_start();
// $conn = mysqli_connect("localhost", "root", "root", "artstailor");

$mysqli = new mysqli("localhost", "root", "root", "artstailor");

$buyer_name = $_POST['buyer_name'];
$product = $_POST['product'];
$credit_no = $_POST['credit_no'];
$cvv = $_POST['cvv'];
$comments = $_POST['comments'];

$sql = "INSERT INTO payment_info (buyer_name,product_bought,credit_card_number,cvv,comments) 
VALUES ('$buyer_name','$product','$credit_no','$cvv','$comments')";
if($mysqli->query($sql) === true){
    echo "Payment Successfull";
} else{
    echo "ERROR: Could not able to execute $sql. " . $mysqli->error;
}
?>