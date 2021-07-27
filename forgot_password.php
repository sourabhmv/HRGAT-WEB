<?php
session_start();
include("dbconnect.php");
if($_SERVER["REQUEST_METHOD"]=="POST")
{

	$email=$_POST['email'];
	
	if(empty($email))
	{
		$_SESSION['msg']="Please Enter An Email";

		header("location:forgot_password_mail.php");

	}
	else{

	    
		$query=mysqli_query($conn,"SELECT * FROM signup_tb WHERE email='$email' ");
		if(mysqli_num_rows($query)<1)
		{
			$_SESSION['msg']="No User Is Found With This Email !";
			header("location:forgot_password_mail.php");
		}
		else
		{
			$user=$query->fetch_assoc();
			$otp= rand(1000,9999);
			$user_id=$user['id'];
			$update_sql="UPDATE signup_tb SET otp =$otp WHERE  id =$user_id";
		

				if ($conn->query($update_sql))
				{
					/*mail */

					$to =$user['email'];

					$subject = "Forgot Password OTP";

					$message = "The OTP for the password reset  is :$otp";

					$headers = "MIME-Version: 1.0" . "\r\n";

					$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";


					$headers .= 'From:project@test.com' . "\r\n";
				    mail($to,$subject,$message,$headers);

				
				    $_SESSION['forgot_email']=$user['email'];
				    $_SESSION['forgot_user_id']=$user['id'];
				    $_SESSION['forgot_email_verified']=1;

					header("location:reset_password_form.php");
				}
				else{

					header("location:forgot_password_mail.php");
				}
		}
		}
}
?>
