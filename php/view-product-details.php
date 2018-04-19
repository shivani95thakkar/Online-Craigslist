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
      $limit = 12;

      // Create connection
      $conn = mysqli_connect($servername, $username, $password, $dbname);
      
      // Check connection
      if (!$conn) {
          die("Connection failed: " . mysqli_connect_error());
      }
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
		    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
    <link href="../css/cart.css" type="text/css" rel="stylesheet" />

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>

		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <a class="navbar-brand" href="#">Craigslist</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="../html/homepage.php">Product Catalog </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">My Wishlist <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Add Product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../php/destroysession.php">Logout</a>
          </li>
        </ul>
      </div>
    </nav>


    


    <?php
    	echo '<h1>hello '.$_SESSION['email_id'].'</h1>';

    	$get_info = "SELECT * FROM utility where utility_id=".$_GET['utility_id'].";";
        $item_info = mysqli_query($conn, $get_info);
        $item_details = mysqli_fetch_assoc($item_info);

        $img_res =  mysqli_query($conn, "SELECT image_path FROM utility_image where utility_id=".$_GET['utility_id']);
    	$path = mysqli_fetch_assoc($img_res);

    	?>

    	<div class="product-item">
          <form method="post" action="../php/manage-wishlist.php?action=add&utility_id=<?php echo $item_details["utility_id"]; ?>">
            <div class="product-image"><img height="100" width="120" src="../php/<?php echo $path["image_path"]; ?>"></div>
            <div><strong><?php echo 
            $item_details["name"]; ?></strong></div>
            <div class="product-price"><?php echo "$".$item_details["price"]; ?></div>
            <div><input type="submit" value="Add to wishlist" class="btnAddAction" /></div>
          
          </form>
        </div>
</body>
</html>