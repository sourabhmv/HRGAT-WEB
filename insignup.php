<?php
include("dbconnect.php");
$name=mysqli_real_escape_string($conn,$_REQUEST['name']);
$phone=mysqli_real_escape_string($conn,$_REQUEST['phone']);
$email=mysqli_real_escape_string($conn,$_REQUEST['email']);
$password=$_REQUEST['password'];
$session_id=$_REQUEST['session_id'];

	if(empty($session_id)&&empty($password))
	{
		$_SESSION['msg']="Invalid Data";
		header("location:signup.php");
	}
	else
	{

		$fetch_sql="SELECT * FROM session_tb WHERE  session_id =$session_id";
		$result=$conn->query($fetch_sql);

		$row=$result->fetch_assoc();
		$pwd= unserialize($row['session_map']);
		$input_pwd_arry=str_split($password,2);
		$key="";

		foreach ($input_pwd_arry as $value) {

			$key1=array_search( $value,$pwd);
			$key=$key.$key1;

		}
		$generated_password=$key;

		$sql="INSERT INTO signup_tb(name,phone,email,password)VALUES('$name','$phone','$email','$generated_password')";
		if (mysqli_query($conn,$sql))
		{
			header("location:success.php");
		}
	}
?>