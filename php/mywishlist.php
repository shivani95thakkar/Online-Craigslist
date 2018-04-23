<?php
    session_start();
    if(!isset($_SESSION['email_id'])){
      header("Location: ../html/login.html");
    }
?>
<!DOCTYPE html>
<html>
<head>
	<title>Homepage</title>
	    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link href="../css/cart.css" type="text/css" rel="stylesheet" />
    
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>

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
            <a class="nav-link" href="../html/utility.php">Add Product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../html/myproducts.php">My Products</a>
          </li>
          <li class="nav-item">
            <a  class="nav-link" href="../php/destroysession.php">Logout</a>
          </li>
        </ul>
      </div>
    </nav>


    


    <?php
    	echo '<h1>hello '.$_SESSION['email_id'].'</h1>';
      echo '<a style="position: absolute;    top: 80px; right: 16px" class="btn btn-success" href ="../php/send_mail.php"> Send Mail </a><br>';

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

      $select_wishlist_items = "SELECT * FROM wishlist WHERE email_id='".$_SESSION['email_id']."' ORDER BY timestamp;";
      $items_set_id = mysqli_query($conn, $select_wishlist_items);

      while ($item_id = mysqli_fetch_assoc($items_set_id)) {
        # code...
        // echo $item_id['utility_id']."<br>";

        $get_img = "SELECT image_path FROM utility_image where utility_id=".$item_id['utility_id'].";";
        $img_res =  mysqli_query($conn, $get_img);
        $path = mysqli_fetch_assoc($img_res);

        $get_info = "SELECT * FROM utility where utility_id=".$item_id['utility_id'].";";
        $item_info = mysqli_query($conn, $get_info);
        $item_details = mysqli_fetch_assoc($item_info);
        ?>

        <div class="product-item">
          <form method="post" action="../php/manage-wishlist.php?action=remove&utility_id=<?php echo $item_details["utility_id"]; ?>">
            <div class="product-image"><img height="100" width="120" src="../php/<?php echo $path["image_path"]; ?>"></div>
            <div><strong><a href="../php/view-product-details.php?page=1&utility_id=<?php echo $item_id['utility_id']; ?>"> <?php echo $item_details["name"]; ?> </a></strong></div>
            
            <div class="product-price">
            <?php if($item_details['is_deleted'] == '1'){
                      echo "Deleted";
            }
            else{
              echo "$".$item_details["price"];
            } ?>
            </div>
            <div><input type="submit" value="Remove" class="btn btn-danger" /></div>

            
          
          </form>
        </div>

        <?php

      }
    ?>

<!-- <h2> This is my wishlist </h2> -->
</body>
</html>


