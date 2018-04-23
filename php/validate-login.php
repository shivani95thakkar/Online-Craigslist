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

		$admin_query = "SELECT * FROM user WHERE email_id='".$email."'";
		$admin_result = mysqli_query($conn, $admin_query);

		if(mysqli_num_rows($result) > 0){
			$row = mysqli_fetch_assoc($admin_result);
			if($row['isAdmin'] == 1){
				session_start();
				$_SESSION["email_id"] = $email;
				$_SESSION["isAdmin"] = 1;
				header("Location: ../php/view_users.php");
			}
			else
			{
				session_start();
				$_SESSION["email_id"] = $email;
				header("Location: ../html/homepage.php");
			}
		}
		else{
			$message = "Username or Password Incorrect";
	    	header("refresh:0;../html/login.html");
			echo "<script type='text/javascript'>alert('$message');</script>";
		}
	}
?>