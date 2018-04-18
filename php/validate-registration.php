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

// echo "Connected to $dbname";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // …

	// $username = $_POST['username'];
	// echo "Usernmae:".$username;
	$password = sha1($_POST['password']);
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$address1 = $_POST['address1'];
	//$address2 = $_POST['address2'];
	$city = $_POST['city'];
	$state = $_POST['state'];
	$zipcode = $_POST['zipcode'];
	$country = $_POST['country'];

	$insert_account = "INSERT INTO account(email_id, password)
	VALUES ('$email', '$password');";

	$insert_user = "INSERT INTO user (email_id, firstname, lastname, phone_no, street, city, state, zipcode, country, rating, isAdmin)
	VALUES 						('$email', '$firstname', '$lastname', '$phone', '$address1', '$city', '$state', '$zipcode', '$country', 0, 0);";



	if (mysqli_query($conn, $insert_user) and mysqli_query($conn, $insert_account)) {
	    $message = "Registered! You may now login!";
	    header("refresh:0;../html/login.html");
		echo "<script type='text/javascript'>alert('$message');</script>";
		// header('Location: '. 'login.html');
	} else {
	    // echo "Error: " ." ".$insert_account . "<br>" . mysqli_error($conn);
	    $message = "Sorry, email has been taken!";
	    header("refresh:0;../html/register.html");
		echo "<script type='text/javascript'>alert('$message');</script>";
	}
}
mysqli_close($conn);
?>