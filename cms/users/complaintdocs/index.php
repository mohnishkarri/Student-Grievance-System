<?php include('connect.php'); ?>

<!-- this page is for form in php -->
<!DOCTYPE html>
<html>
<head>
	<title>Form </title>
</head>
<body>
<form action="Home.php" method="POST">
	<!-- handle text fieldin PHP -->
	Email : <input type="text" name="email" placeholder="Enter your Email id" > <br> 
	<!-- handle password field in PHP	 -->
	Password: <input type="Password" name="pass" placeholder="Enter Password"><br>
	<!-- handle checkbox in PHP	 -->
	cources:
	C <input type="checkbox" value = "C" name="check1"><br>
	C++ <input type="checkbox" value = "C++" name="check2"><br>
	JAVA <input type="checkbox" value = "java" name="check3"><br>
	PHP  <input type="checkbox" value = "PHP" name="check4"><br>
	<!-- handle radio button in PHP	 -->
	<!-- in radio button name should be same for ALL RADIO buttons then only at the same time only on will be tick -->
	<span>Gender : </span> 
	Male <input type="radio" value = "Male" name="a">
	Female <input type="radio" value = "Female" name="a"><br>
	<!-- handle listBox in php -->
	<select name="location[]" multiple>
		Location :<option value="Mumbai">Mumbai</option>
				  <option value="Goa">Goa</option>
		          <option value="Delhi">Delhi</option>
		          <option value="Ranchi">Ranchi</option>
		          <option value="Pune">Pune</option>
		          <option value="ratnagiri">Ratnagiri</option>
	</select>
	<br>
	<!-- handle date of birth -->
	<input type="date" name="dob" value="">
	<?php
		echo date("<br>" .'d-m-Y');
?>
	<br>
	<!-- handle TextArea in php -->
	<textarea name="xyz" rows="3" cols="30" >
	</textarea>
	<br> <br>
	<!-- handle files in PHP -->
	Upload File : <input type="File" name="myfile">
	<br> <br>
	<input type="submit" name="Submit" >
	<!-- how to retrive data  at once from PHP -->
	 <?php
	 foreach ($_Request as $key => $value) {
	 	if(is_array($value)){
	 		foreach ($value as $data) {
	 			echo $key . "=" . $data . "<br>";
	 		}
	 	}
	 	else{
	 		echo $key . "=" . $value . "<br>";
	 }
	}
	 ?>
	 	
</form>
</body>
</html>

