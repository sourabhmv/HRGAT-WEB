<?php
session_start();
include("dbconnect.php");

$email=mysqli_real_escape_string($conn,$_REQUEST['email']);
$password=$_REQUEST['password'];
$user_id=$_REQUEST['user_id'];
$session_id=$_REQUEST['session_id'];
$otp=$_REQUEST['otp'];

	if(empty($session_id)&&empty($password)&&empty($otp))
	{
		$_SESSION['msg']="Invalid Data Reset Failed";
		unset($_SESSION['forgot_email']);
		unset($_SESSION['forgot_email_verified']);
		unset($_SESSION['forgot_user_id']);
	   
		header("location:forgot_password_mail.php");
	}
	else
	{

		$query=mysqli_query($conn,"SELECT * FROM signup_tb WHERE id='$user_id' AND otp='$otp' ");

		if(mysqli_num_rows($query)<1)
		{
				$_SESSION['msg']="Invalid OTP";

				header("location:forgot_password_mail.php");
		}
		else{

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

				

				$sql="UPDATE signup_tb SET password =$generated_password , otp='' WHERE  id =$user_id";

				if ($conn->query($sql))
				{
								
					header("location:index.php");
					
				}


		}



	}
?>