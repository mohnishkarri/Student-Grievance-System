<?php
include('includes/config.php');
error_reporting(0);
if(isset($_POST['submit']))
{
	$fullname=$_POST['fullname'];
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	$contactno=$_POST['contactNo'];
	$status=1;
	$query=mysqli_query($con,"insert into users(fullName,userEmail,password,contactNo,status) values('$fullname','$email','$password','$contactno','$status')");
	$msg="Registration successfull. Now You can login !";
}
?>
<script>
	function GFG_FUN() { 
            var input = document.getElementById("input"); 
              
            input.addEventListener("mousewheel",  
                function(event){  
                    this.blur()  
                }); 
</script>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>SGS | User Registration</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
  </head>

  <body>
	  <div id="login-page">
	  	<div class="container">
	<h3 align="center" style="color:#fff">Complaint Management System</h3>
	<hr />
		      <form class="form-login" method="post" >
		        <h2 class="form-login-heading">User Registration</h2>
		        <p style="padding-left: 1%; color: green">
		        	<?php if($msg){
echo htmlentities($msg);
		        		}?>


		        </p>
		        <div class="login-wrap">
		         	<input type="text" class="form-control" placeholder="COLLEGE ID" id= "fullname" name="fullname" required="required" autocomplete="off" autocomplete="off">
		            <br>
		            <input type="text" class="form-control" placeholder="ENROLMENT NUMBER" id="email" onBlur="userAvailability()" name="email" required="required" autocomplete="off">
		             <span id="user-availability-status1" style="font-size:12px;"></span>
		            <br> 
		            <input type="password" class="form-control" placeholder="Password" required="required" name="password"
		            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required >
		            <br>
		            <input type="tel" class="form-control"  onLoad="GFG_FUN()" minlength="10" maxlength="10"  name="contactNo" placeholder="Contact no" required="required" autocomplete="off">
		          <br>
		            <button class="btn btn-theme btn-block"  type="submit" name="submit" id="submit" ><i class="fa fa-user" ></i> Register</button>
		            <hr
					
		            
		            <div class="registration">
		                Already Registered<br/>
		                <a class="" href="index.php">
		                   Sign in
		                </a>
		            </div>
		
		        </div>
		
		      
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>


  </body>
</html>
