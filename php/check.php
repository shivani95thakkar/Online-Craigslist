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

	if(isset($_POST["email"]) and $_POST["email"] != ""){
		$sql = "SELECT * FROM account WHERE email_id='".$_POST["email"]."';";
		$result = mysqli_query($conn, $sql);

		if(mysqli_num_rows($result) > 0)
		{
			echo "<div>Sorry, that email's taken.</div>";
		}
		else
		{
			echo "<div >Available  :)</div>";
		}
	}
?>