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
        <link rel="stylesheet" type="text/css" href="../css/viewproduct.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
   <!--  <link href="../css/item.css" type="text/css" rel="stylesheet" /> -->
    

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
            <a class="nav-link" href="../php/mywishlist.php">My Wishlist <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../html/utility.php">Add Product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../html/myproducts.php">My Products</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../php/destroysession.php">Logout</a>
          </li>
        </ul>
      </div>
    </nav>


    


    <?php
    	// echo '<h1>hello '.$_SESSION['email_id'].'</h1>';

    	$get_info = "SELECT * FROM utility where utility_id=".$_GET['utility_id'].";";
        $item_info = mysqli_query($conn, $get_info);
        $item_details = mysqli_fetch_assoc($item_info);

        $img_res =  mysqli_query($conn, "SELECT image_path FROM utility_image where utility_id=".$_GET['utility_id']);
    	$path = mysqli_fetch_assoc($img_res);

      $seller_query = "SELECT * FROM user WHERE email_id='".$item_details['email_id']."';";
      $seller_info = mysqli_query($conn, $seller_query);
      $seller_details = mysqli_fetch_assoc($seller_info);

      // $item_description = "SELECT * FROM utility WHERE email_id='".$item_details['email_id']."';";
      // $item_info = mysqli_query($conn, $item_description);
      // $item_details = mysqli_fetch_assoc($item_info);

      $category_description = "SELECT * FROM utility_category WHERE category_id='".$item_details['category_id']."';";
      $category_info = mysqli_query($conn, $category_description);
      $category_details = mysqli_fetch_assoc($category_info);

      $email_description = "SELECT * FROM utility where utility_id=".$_GET['utility_id'].";";
      $email_info = mysqli_query($conn, $email_description);
      $email_details = mysqli_fetch_assoc($email_info);

    	?>

  <div class="container">
    <div class="card">
      <form method="post" action="../php/manage-wishlist.php?action=add&page=<?php echo $_GET['page'];?>&utility_id=<?php echo $item_details['utility_id']; ?>">
      <div class="container-fliud">
        <div class="wrapper row">
          <div class="preview col-md-6">
            
            <div class="preview-pic tab-content">
              <div class="tab-pane active" id="pic-1"><img src="../php/<?php echo $path["image_path"]; ?>" height="300px" width="200px" /></div>
           <!--    <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
              <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
              <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
              <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div> -->
            </div>
           <!--  <ul class="preview-thumbnail nav nav-tabs">
              <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
              <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
              <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
              <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
              <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
            </ul> -->
            
          </div>
          <div class="details col-md-6">
            <h3 class="product-title">Product Details:</h3>
            <?php  echo "".$item_details["description"]; ?><br><br>
            
            <h5 class="colors">current price: 
              <span ><?php echo "$".$item_details["price"]; ?></span>
            </h5>
            
            <h5 class="colors">Seller's Name:
              <span ><?php echo "".$seller_details["firstname"]." ".$seller_details["lastname"]; ?></span>
            </h5>
           

            <h5 class="colors">Email ID:
              <span ><?php echo "".$email_details["email_id"]; ?></span>
            </h5>

            <h5 class="colors">Address:
              <span ><?php echo "".$email_details["street"].", ".$email_details["city"].", ".$email_details["state"].", ".$email_details["country"]; ?></span>
            </h5>

            <h5 class="colors">Category:
              <span ><?php  echo "".$category_details["name"]; ?></span>
            </h5><br>
            <div class="action">
              <!-- <button class="add-to-cart btn btn-default" type="button">add to cart</button> -->
              <input type="submit" value="Add to wishlist" class="btn btn-success" />
              <!-- <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button> -->
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
  </div>




</body>
</html>