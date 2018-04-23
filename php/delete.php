<?php

//include("database/db_conection.php");
$host = "localhost";
$user = "root";
$password = "root";
$database = "craigslist";
$conn;
$conn = mysqli_connect($host,$user,$password,$database);
$delete_id=$_GET['del'];

$delete_query="update user set is_deleted=1 WHERE email_id='".$delete_id."'";//delete query
$deleteProducts = "UPDATE utility SET is_deleted = 1 WHERE email_id='".$delete_id."'";
// echo $delete_query."<br>";
if(mysqli_query($conn,$delete_query) and mysqli_query($conn, $deleteProducts))
{
	//javascript function to open in the same window
	$message="user deleted";
	echo "<script type='text/javascript'>alert('$message');</script>";
	header("refresh:0;url=view_users.php");
}




	


?>