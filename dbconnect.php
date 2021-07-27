<?php
$servername="localhost";
$username="landaksa";
$password="jubin@TNM$123";
$dbname="landaksa_signup";
$conn=new mysqli($servername,$username,$password,$dbname);
if($conn->connect_error)
{
	die("connection failed:".$conn->connect_error);
}
?>