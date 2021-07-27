<!DOCTYPE html>
<html lang="en">
<head>
	<title>HRGAT Registration</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
 <style type="text/css">ul {
  list-style-type: none;
}

li {
  display: inline-block;
}

input[type="checkbox"][id^="myCheckbox"] {
  display: none;
}

label {
  border: 1px solid #fff;
  padding: 10px;
  display: block;
  position: relative;
  margin: 10px;
  cursor: pointer;
}

label:before {
  background-color: white;
  color: white;
  content: " ";
  display: block;
  border-radius: 50%;
  border: 1px solid grey;
  position: absolute;
  top: -5px;
  left: -5px;
  width: 25px;
  height: 25px;
  text-align: center;
  line-height: 28px;
  transition-duration: 0.4s;
  transform: scale(0);
}

label img {
  height: 100px;
  width: 100px;
  transition-duration: 0.2s;
  transform-origin: 50% 50%;
}

:checked + label {
  border-color: #ddd;
}

:checked + label:before {
  content: "✓";
  background-color: grey;
  transform: scale(1);
}

:checked + label img {
  transform: scale(0.9);
  /* box-shadow: 0 0 5px #333; */
  z-index: -1;
}ul {
  list-style-type: none;
}

li {
  display: inline-block;
}

input[type="checkbox"][id^="myCheckbox"] {
  display: none;
}

label {
  border: 1px solid #fff;
  padding: 10px;
  display: block;
  position: relative;
  margin: 10px;
  cursor: pointer;
}

label:before {
  background-color: white;
  color: white;
  content: " ";
  display: block;
  border-radius: 50%;
  border: 1px solid grey;
  position: absolute;
  top: -5px;
  left: -5px;
  width: 25px;
  height: 25px;
  text-align: center;
  line-height: 28px;
  transition-duration: 0.4s;
  transform: scale(0);
}

label img {
  height: 100px;
  width: 100px;
  transition-duration: 0.2s;
  transform-origin: 50% 50%;
}

:checked + label {
  border-color: #ddd;
}

:checked + label:before {
  content: "✓";
  background-color: grey;
  transform: scale(1);
}

:checked + label img {
  transform: scale(0.9);
  /* box-shadow: 0 0 5px #333; */
  z-index: -1;
}</style>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-90 p-b-30">
				<form class="login100-form validate-form" method="POST" action="insignup.php">
					<span class="login100-form-title p-b-40">
						Sign Up 
					</span>
      <table width="500" align="center">
        <tr><td><a href="#" class="select_category" data-type="actors">Actors</a>
        </td><td><a href="#" class="select_category" data-type="animals">Animals</a></td>
              <td><a  href="#" class="select_category" data-type="sports">Sports Persons</a></td>
          <td><a  href="#" class="select_category" data-type="friends">WWE</a></td>
      </tr>
        </table>
        <div>

          <?php
            include("dbconnect.php");
            $sql="SELECT * FROM photo_tb ";
            $result=$conn->query($sql);
            $result2=$conn->query($sql);
            $password_map=[];
            $rand_array=[];
            $digits = 2;
            $i=0;
           while($row=$result->fetch_assoc())
          
          {
             //$rand=mt_rand(10,99);
             if($i==0)
             {
                   
                $rand= rand(pow(10, $digits-1), pow(10, $digits)-1);
                $rand_array[]=$rand;
                $password_map[$row['id']]=$rand;
                
             }
             else{
                  while(in_array( $rand= rand(pow(10, $digits-1), pow(10, $digits)-1), $rand_array));
                  
                 $rand_array[]=$rand;
                 $password_map[$row['id']]=$rand;
                 
             }

              

            $i++;
           }
          
          
          
          $serialized_array=serialize($password_map);
          $insert_sql="INSERT INTO session_tb(session_map,type)VALUES('$serialized_array','1')";
          $data= $conn->query($insert_sql);

          $password_map_id = $conn->insert_id;


                  
          echo"<ul>";
          while($row1=$result2->fetch_assoc())
          {


          $a= $row1['id'];
          if($row1['cat']=='Actors')
          {
          echo"<li class='actors' style='display:block;'>";
          }
          elseif ($row1['cat']=='Animal') {
          echo"<li class='animals'  style='display:none;'>";
          }
          elseif ($row1['cat']=='Sports') {
          echo"<li class='sports'  style='display:none;'>";
          }
          elseif ($row1['cat']=='Friend') {
          echo"<li class='friends'  style='display:none;'>";
          }

          echo"<label for='myCheckbox1.$a'><img src=".'admin/'.$row1['image']." /> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$password_map[$a]</label>
          </li>";
          }
          echo"</ul>";
          ?>
            
          </div>

          <input  type="hidden" name="session_id" value="<?php echo  $password_map_id; ?>">
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter Name">
		      <input class="input100" type="text" name="name" placeholder="Name">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter Phone number">
						<input class="input100" type="text" name="phone" placeholder="Phone">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter email: email@gmail.com">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-20" data-validate = "Please enter password">
						<span class="btn-show-pass">
							<i class="fa fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
            <button class="login100-form-btn">
              Submit
            </button>
          </div>
					

						
					</div>
					
				</form>
			</div>
		</div>
	</div>
	
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
<script type="text/javascript">


  $(document).on('click','.select_category',function(){
  
   type=$(this).data('type');

   $('.'+type).show();
   $('.'+type).siblings().not('.'+type).hide();
   
  });
</script>
</html>