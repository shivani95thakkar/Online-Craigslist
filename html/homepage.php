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
      $limit = 20;

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
	<title>Homepage</title>
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
          <li class="nav-item active">
            <a class="nav-link" href="#">Product Catalog <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../php/mywishlist.php">My Wishlist</a>
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
    ?>


  <div id="product-grid"><!-- 
  <div class="txt-heading">Utilities</div> -->
  <?php

  if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; };  
    $start_from = ($page-1) * $limit; 


  // $utility_array = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM utility ORDER BY utility_id LIMIT $start_from, $limit;"));
  $utility_array = array();
  $result = mysqli_query($conn, "SELECT * FROM utility ORDER BY utility_id LIMIT $start_from, $limit;");

  while($row = mysqli_fetch_assoc($result)){
    // array_push($utility_array, $row);
    $img_res =  mysqli_query($conn, "SELECT image_path FROM utility_image where utility_id=".$row["utility_id"]);
    $path = mysqli_fetch_assoc($img_res);

    // echo "<pre>";
    // print_r($row);
    // print_r($path);
    // echo "</pre>";
?>
    <div class="product-item">
      <form method="post" action="wishlist.php?action=add&utility_id=<?php echo $row["utility_id"]; ?>">
      <div class="product-image"><img height="100" width="120" src="../php/<?php echo $path["image_path"]; ?>"></div>
      <div><strong><?php echo 
      $row["name"]; ?></strong></div>
      <div class="product-price"><?php echo "$".$row["price"]; ?></div>
      <div><input type="submit" value="Add to wishlist" class="btnAddAction" /></div>
      <br>
      </form>
    </div>
<?php } ?>



</div>

<?php  
  $sql = "SELECT COUNT(*) FROM utility;";  
  $rs_result = mysqli_query($conn, $sql);  
  
  $row = mysqli_fetch_array($rs_result);  
  // $row = $rs_result;

  // echo "<pre>";
  // print_r($row);
  // echo "</pre>";

  $total_records = $row[0];  
  $total_pages = ceil($total_records / $limit);  

  $pagLink = "<div class='pagination'>";  
  for ($i=1; $i<=$total_pages; $i++) {  
             $pagLink .= " "."<a href='../html/homepage.php?page=".$i."'>".$i."</a>"."&nbsp;";  
  };  
  echo $pagLink . "</div>";  
?>


</body>
</html>
