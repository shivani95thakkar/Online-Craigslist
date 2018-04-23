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

      // Create connection
      $conn = mysqli_connect($servername, $username, $password, $dbname);
      
      // Check connection
      if (!$conn) {
          die("Connection failed: " . mysqli_connect_error());
      }

	
     
	if ($_SERVER['REQUEST_METHOD'] === 'POST') {

		$utility_id=$_POST['utility_id'];
		$name = $_POST['name'];
		$image_path;
		$category_id = $_POST['category_id'];
		$city = $_POST['city'];
		$isAvailable= $_POST['isAvailable'];
		$email_id= $_SESSION['email_id'];
		$street= $_POST['street'];
		$state= $_POST['state'];
		$country= $_POST['country'];
		$rating = 0;
		$post_date;
		$price= $_POST['price'];
		$description= $_POST['description'];

		$image_name=$utility_id.$_FILES["image"]["name"];
		$type1=$_FILES["image"]["type"];
		$size1=$_FILES["image"]["size"];
		$tmp_name1=$_FILES["image"]["tmp_name"];
		// echo "<pre>";
		// print_r($_POST);
		// echo "</pre>";

		// echo "<br>";
		// echo "$email_id"."<br>";
		// echo "$name"."<br>";
		// echo "$category_id"."<br>";
		// echo "$price"."<br>";
		// echo "$description"."<br>";
		// echo "$isAvailable"."<br>";
		// echo "$street"."<br>";
		// echo "$city"."<br>";
		// echo "$state"."<br>";
		// echo "$country"."<br>";

		$edit_utility = "Update UTILITY set name='$name', category_id='$category_id', isAvailable='$isAvailable', email_id='$email_id', city='$city', street='$street', state='$state', country='$country', price='$price', description='$description', timestamp=CURRENT_TIMESTAMP where utility_id='".$utility_id."';";
				


		if(isset($image_name) and $image_name!="")
		{
			// echo "img: $image_name"."<br>";
		    if($type1=='image/jpeg' || $type1=='image/jpg' || $type1=='image/png'){

			    if(!empty($image_name) )
		    	{
		         $location="../php/product-images/".$email_id."/";
		         // $location1="C:/wampserver/www/OnlinePhotographyContest/Gallery/";
		         if(!file_exists($location)){
		             mkdir($location,0777,true);
		   //     echo "new created";
		          }
				  if(move_uploaded_file($tmp_name1,$location.$image_name))// && copy($location.$name1,$location1.$name1))
				    {
				    	$complete_path = $location.$image_name;
						$edit_image = "update UTILITY_IMAGE set image_path='$complete_path' where utility_id='".$utility_id."';";
						// echo "edit query: ", $edit_image, "<br>";
				    	if (mysqli_query($conn, $edit_utility) and mysqli_query($conn, $edit_image)){

				    		
				    		$message = "Item Edited";
				    		// echo "Redirecting to my products page";
						    // header("refresh:0;../html/login.html");
							echo "<script type='text/javascript'>alert('$message');</script>";
							header("refresh:0;url=../html/myproducts.php");
				    	}
				    	else
				    	{
				    		echo "Error: " ." ".$edit_utility . "<br>" . mysqli_error($conn);
				    	}

		            // echo "<script>alert('Image Uploaded')</script>";
		            // header("refresh:0;url=../html/myproducts.php");
				
				
				    }
				    else
				    {
				       echo "Error...";
				    }
		    	}
		    	else
		    	{
		    		echo "Image name empty...";
		    	}
		    }
		    else{
		        echo "<script>alert('Please select a file of jpeg type  ')</script>";
		        header("refresh:0;url=../php/edit_utility_form.php");
		        // header("refresh:0;url=/OnlinePhotographyContest/uploader.php");
		    }
		}
		else
		{
	        // echo "<script>alert('Please select a file')</script>";
	        // // header("refresh:0;url=/OnlinePhotographyContest/uploader.php");
	        if (mysqli_query($conn, $edit_utility)){//} and mysqli_query($conn, $edit_image)){

				    		
				    		$message = "Item Edited";
				    		// echo "Redirecting to my products page";
						    // header("refresh:0;../html/login.html");
							echo "<script type='text/javascript'>alert('$message');</script>";
							header("refresh:0;url=../html/myproducts.php");
				    	}
				    	else
				    	{
				    		echo "Error: " ." ".$edit_utility . "<br>" . mysqli_error($conn);
				    	}
		}

	}
?>