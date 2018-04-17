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
	else
	{
		echo "connection done";
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>product catalog</title>
	<link href="../css/cart.css" type="text/css" rel="stylesheet" />
</head>


<body>
 	<h2>this is the product catalog </h2>

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
		$path =	mysqli_fetch_assoc($img_res);

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
<?php	} ?>



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
             $pagLink .= " "."<a href='../php/product-catalog.php?page=".$i."'>".$i."</a>"."&nbsp;";  
	};  
	echo $pagLink . "</div>";  
?>











</body>
</html>


