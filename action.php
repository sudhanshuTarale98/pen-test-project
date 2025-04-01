<?php
session_start();
$conn = mysqli_connect("localhost", "root", "root", "artstailor");

$c_email = $_POST['c_email'];
$c_password = md5($_POST['c_password']);


$sql = "SELECT name FROM customer where email='$c_email' AND password='$c_password'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    
    header("Location: index.html");
}
else{
    echo "Login Failed";
}
?>