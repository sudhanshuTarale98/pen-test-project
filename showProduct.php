<?php
session_start();
$conn = mysqli_connect("localhost", "root", "root", "artstailor");

$search = $_POST['search'];


$sql = "SELECT product_name,cost from products where product_name like '%{$search}%'";

$result = $conn->query($sql);

?>