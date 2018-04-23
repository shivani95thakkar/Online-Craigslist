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
  <link href="../css/cart.css" type="text/css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
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
          <li class="nav-item">
            <a class="nav-link" href="../php/mywishlist.php">My Wishlist</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../html/utility.php">Add Product</a>
          </li>

          <li class="nav-item active">
            <a class="nav-link" href="../html/myproducts.php">My Products <span class="sr-only">(current)</span></a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="../php/destroysession.php">Logout</a>
          </li>

        </ul>
      </div>
  </nav>

  	<?php
    	echo '<h1>Welcome, '.$_SESSION['firstname'].'!</h1>';
?>

<div id="product-grid">
<?php

  if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; };  
    $start_from = ($page-1) * $limit; 

   	
   	$select_my_items = "SELECT * FROM utility WHERE is_deleted <> '1' AND email_id='".$_SESSION['email_id']."' ORDER BY timestamp DESC LIMIT $start_from, $limit;";
      $items_set_id = mysqli_query($conn, $select_my_items);

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

        <!-- <div class="product-item" class="btn btn-outline-primary"> -->
        <div class="product-item"> <!-- btn btn-outline-secondary"> -->
          <form method="post" action="../php/manage-products.php?action=remove&utility_id=<?php echo $item_details["utility_id"]; ?>">
            <div class="product-image"><img height="100" width="120" src="../php/<?php echo $path["image_path"]; ?>"></div>
            <div><strong><?php echo 
            $item_details["name"]; ?></strong></div>
            
            <div class="product-price"><?php echo "$".$item_details["price"]; ?></div>
            <div><input type="submit" method="get" formaction="../html/edit_utility_form.php?utility_id=<?php echo $item_details["utility_id"]; ?>" value="Edit" class="btn btn-info"/></div>
            <div><input type="submit" value="Remove" class="btn btn-danger" /></div>
          
          </form>
        </div>

        <?php

      }
    ?>
</div>

<?php  
  $sql = "SELECT COUNT(*) FROM utility WHERE is_deleted <> '1' AND email_id='".$_SESSION['email_id']."';";  
  $rs_result = mysqli_query($conn, $sql);  
  
  $row = mysqli_fetch_array($rs_result);  
  // $row = $rs_result;

  // echo "<pre>";
  // print_r($row);
  // echo "</pre>";

  $total_records = $row[0];  
  $total_pages = ceil($total_records / $limit);  

  echo "<div margin-bottom>";
  $pagLink = "<div class='pagination' style ='margin-bottom:20px; margin-left:100px'>";  
  for ($i=1; $i<=$total_pages; $i++) {  
             $pagLink .= " "."<a class='page-link' href='../html/myproducts.php?page=".$i."'>".$i."</a>";  
  };  
  echo $pagLink . "</div>";  

  echo "</div>"
?>

</body>
</html>