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

if($_SERVER["REQUEST_METHOD"] == "POST"){

	//echo "search and filter results";

	

	$category = $_POST['category'];
	$searchString = $_POST['searchString'];



	if($searchString == ""){
		$searchString = '%';
		$_SESSION['searchString'] = "";
	}
	else{

		$searchString = '%'.$searchString.'%';
		$_SESSION['searchString'] = $searchString;
	}


	// echo "<br>Category: ".$category;
	// echo "<br>Search String: ".$searchString;

	$_SESSION['category'] = $category;
	// $_SESSION['searchString'] = $searchString;

	if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; };  
    $start_from = ($page-1) * $limit; 

	if($category == 'all'){
		$query = "SELECT * FROM utility WHERE is_deleted <> '1' AND name LIKE '$searchString' ORDER BY utility_id LIMIT $start_from, $limit;";
		$sql = "SELECT COUNT(*) FROM utility WHERE is_deleted <> '1' AND name LIKE '$searchString';";
	}
	else
	{
		// $temp = "%".$searchString."%";
		// echo "<br>".$temp;
		$query = "SELECT * FROM utility WHERE is_deleted <> '1' AND category_id=".$category." AND name LIKE '%%$searchString%%' ORDER BY utility_id LIMIT $start_from, $limit;";	
		$sql = "SELECT COUNT(*) FROM utility WHERE is_deleted <> '1' AND category_id=".$category." AND name LIKE '%%$searchString%%';";
	}

	// echo $query;

	$result = mysqli_query($conn, $query);

	if($result -> num_rows == 0)
	{
		echo "<br>No result found";
	}
	else
	{
		// echo "<br>entire response<br>";

		while($row = mysqli_fetch_assoc($result)){

    		$img_res =  mysqli_query($conn, "SELECT image_path FROM utility_image where utility_id=".$row["utility_id"]);
    		$path = mysqli_fetch_assoc($img_res);

		    // echo "<pre>";
		    // print_r($row);
		    // print_r($path);
		    // echo "</pre>";
?>
		    <div class="product-item">
		      <form method="post" action="../php/manage-wishlist.php?action=add&page=<?php echo $page; ?>&utility_id=<?php echo $row["utility_id"]; ?>">
		      <div class="product-image"><img height="100" width="120" src="<?php echo $path["image_path"]; ?>"></div>
		      <div><strong><a href="../php/view-product-details.php?utility_id=<?php echo $row["utility_id"]; ?>"> <?php echo $row["name"]; ?> </a></strong></div>
		      <div class="product-price"><?php echo $row["category_id"]; ?></div>
		      <div class="product-price"><?php echo "$".$row["price"]; ?></div>
		      <div><input type="submit" value="Add to wishlist" class="btnAddAction" /></div>
		      
		      </form>
		    </div>
<?php 	} 
	}
}

?>

<?php  
  // $sql = "SELECT COUNT(*) FROM utility WHERE is_deleted <> '1';";  
// echo $sql;
  $rs_result = mysqli_query($conn, $sql);  
  
  $row = mysqli_fetch_array($rs_result);  
  // $row = $rs_result;

  // echo "<pre>";
  // print_r($row);
  // echo "</pre>";

  $total_records = $row[0];  
  // echo $total_records;
  $total_pages = ceil($total_records / $limit);  

  echo "<div margin-bottom>";
  $pagLink = "<div class='pagination' style ='margin-bottom:20px; margin-left:100px'>";  
  for ($i=1; $i<=$total_pages; $i++) {  
             $pagLink .= " "."<a class='page-link' href='../html/homepage.php?page=".$i."'>".$i."</a>";  
  };  
  echo $pagLink . "</div>";  

  echo "</div>"
?>

</div>