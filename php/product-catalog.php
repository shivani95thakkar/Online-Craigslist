<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
    if(!isset($_SESSION['email_id'])){
      header("Location: ../html/login.html");
    }

    require_once("dbcontroller.php");
	$db_handle = new DBController();
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
	$utility_array = $db_handle->runQuery("SELECT * FROM utility ORDER BY utility_id");
	
	if (!empty($utility_array)) { 
		foreach($utility_array as $key=>$value){
		  $utility_image_array= $db_handle->runQuery("SELECT image_path FROM utility_image where utility_id=".$utility_array[$key]["utility_id"]);
		  
		// echo '<br><pre>'; 
		//   print_r($utility_image_array);
		//   print_r($utility_image_array[0]['image_path']);
		// echo '</pre>';
		?>
		 <div class="product-item">
			<form method="post" action="wishlist.php?action=add&utility_id=<?php echo $utility_array[$key]['utility_id']; ?>">
			<div class="product-image"><img height="100" width="120" src="../php/<?php echo $utility_image_array[0]['image_path']; ?>"></div>
			<div><strong><?php echo 
			$utility_array[$key]["name"]; ?></strong></div>
			<div class="product-price"><?php echo "$".$utility_array[$key]["price"]; ?></div>
			<div><input type="submit" value="Add to wishlist" class="btnAddAction" /></div>
			<br>
			</form>
		</div>
	
	<?php
		}
	}
	?>
</div>
</body>
</html>
