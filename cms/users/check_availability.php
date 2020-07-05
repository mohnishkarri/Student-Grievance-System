<?php 
require("includes/config.php");
if(!empty($_POST["email"])) {
	$email= $_POST["email"];
	// $name=$_POST["fullname"];
	
		$result =mysqli_query($con,"SELECT userEmail FROM users WHERE userEmail='$email'");
		// $result1 =mysqli_query($con,"SELECT userName FROM users WHERE userName='$name'");
		$count=mysqli_num_rows($result);
		// $count1=mysqli_num_rows($result1);
if($count>0)
{
echo "<span style='color:red'> Email already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Email available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
