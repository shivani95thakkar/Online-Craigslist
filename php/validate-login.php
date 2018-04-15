<?php
	$servername = "localhost";
	$username = "root";
	$password = "root";
	$dbname = "craigslist";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	// Check connection
	if (!$conn) {
	    die("Connection failed: " . mysqli_connect_error());
	}


	if ($_SERVER['REQUEST_METHOD'] === 'POST') {
		$email = $_POST['email'];
		$password = sha1($_POST['password']);

		$verify_password = "SELECT * FROM account WHERE email_id='".$email."' AND password='".$password."';";

		$result = mysqli_query($conn, $verify_password);
		if(mysqli_num_rows($result) > 0){
			session_start();
			$_SESSION["email_id"] = $email;
			header("Location: ../html/homepage.php");
		}
		else{
			$message = "Username or Password Incorrect";
	    	header("refresh:0;../html/login.html");
			echo "<script type='text/javascript'>alert('$message');</script>";
		}
	}
?>