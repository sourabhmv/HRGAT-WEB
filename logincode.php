<?php
session_start();
include("dbconnect.php");
if($_SERVER["REQUEST_METHOD"]=="POST")
{

	$email=$_POST['email'];
	$password=$_POST['password'];
	$session_id=$_POST['session_id'];
	if(empty($session_id)&&empty($password))
	{
		$_SESSION['msg']="Invalid Login";
		header("location:index.php");
	}
	else{

		$fetch_sql="SELECT * FROM session_tb WHERE  session_id =$session_id";
		$result=$conn->query($fetch_sql);
		
	    $row=$result->fetch_assoc();
	    $pwd= unserialize($row['session_map']);
	    
		$input_pwd_arry=str_split($password,2);

	     $key="";
		foreach ($input_pwd_arry as $value) 
		{
			
			$key1=array_search( $value,$pwd);
			
			$key=$key.$key1;

		}
	     $generated_password=$key;
	     
	    
	    
		$query=mysqli_query($conn,"SELECT * FROM signup_tb WHERE email='$email' and password='$generated_password'");
		
		 //print_r($generated_password);exit;
		if(mysqli_num_rows($query)<1)
		{
			$_SESSION['msg']="Login Failed,User not Found!";
			header("location:index.php");
		}
		else
		{
			$row=mysqli_fetch_array($query);
			$_SESSION['id']=$row['id'];
			$_SESSION['email']=$row['email'];
			$delete_sql="DELETE * FROM session_tb WHERE session_id = $session_id";
			$conn->query($delete_sql);
		
			header("location:home.php");

		}
		}
}
?>
