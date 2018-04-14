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

	if(isset($_POST["user_name"]) and $_POST["user_name"] != ""){
		$sql = "SELECT * FROM account WHERE username='".$_POST["user_name"]."';";
		$result = mysqli_query($conn, $sql);

		if(mysqli_num_rows($result) > 0)
		{
			echo "<div>Sorry, that username's taken.</div>";
		}
		else
		{
			echo "<div >username available.</div>";
		}
	}
?>