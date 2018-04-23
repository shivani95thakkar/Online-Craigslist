<?php
	if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
    if(!isset($_SESSION['email_id'])){
      header("Location: ../html/login.html");
    }

     $servername = "localhost";
	  $username = "root";
	  $password = "root";
	  $dbname = "craigslist";
	  // $limit = 12;

	  // Create connection
	  $conn = mysqli_connect($servername, $username, $password, $dbname);
	  
	  // Check connection
	  if (!$conn) {
	      die("Connection failed: " . mysqli_connect_error());
	  }

	if (!empty($_GET["action"])){
	  // echo "method:".$_SERVER['REQUEST_METHOD'];
		// echo "this will manage wishlist";
		$email_id = $_SESSION['email_id'];
		$utility_id = $_GET['utility_id'];
		// echo "<br>user: ".$email_id;
		// echo "<br>utility id: ".$utility_id;

		switch ($_GET["action"]) {

			case 'remove':
				# code...
				// echo "we will remove from the cart";

				// $remove_query = "DELETE FROM wishlist WHERE utility_id = '".$utility_id."';";
				$remove_query = "UPDATE utility
									SET is_deleted = '1'
									WHERE email_id='".$email_id."'
									AND utility_id='".$utility_id."';";

				// echo "$remove_query";

				if(mysqli_query($conn, $remove_query))
				{
					//echo "item added to the cart";
					$message = "item removed";// from the cart";
					echo "<script type='text/javascript'>alert('$message');</script>";
					// header("Location: ../html/homepage.php");
					header("refresh:0; ../html/myproducts.php");
					exit();
				}
				else
				{
					echo "error";
				}

				break;

			case 'empty':
				# code...
				echo "we will empty the cart";
				break;
			
			default:
				# code...
				break;
		}
	}

?>