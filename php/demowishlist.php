<?php
session_start();
require_once("dbcontroller.php");
$db_handle = new DBController();

if(!empty($_GET["action"])) {
	switch($_GET["action"]) {

		case "add":
			// if(!empty($_POST["quantity"])) {
				$UtilityById = $db_handle->runQuery("SELECT * FROM utility WHERE utility_id='" . $_GET["utility_id"] . "'");
				$UtilityArray = array($UtilityById[0]["utility_id"]=>array('name'=>$UtilityById[0]["name"], 'utility_id'=>$UtilityById[0]["utility_id"], 'price'=>$UtilityById[0]["price"]));
				print(UtilityArray);
				
				if(!empty($_SESSION["wish_list_item"])) {
					if(in_array($UtilityById[0]["utility_id"],array_keys($_SESSION["wish_list_item"]))) {
						// foreach($_SESSION["wish_list_item"] as $k => $v) {
						// 		if($UtilityById[0]["utility_id"] == $k) {
						// 			if(empty($_SESSION["wish_list_item"][$k])) {
						// 				$_SESSION["wish_list_item"][$k]= 0;
						// 			}
						// 			// $_SESSION["wish_list_item"][$k]["quantity"] += $_POST["quantity"];
						// 		}
						// }
					} else {
						echo "<pre>";
						print_r($UtilityById[0]['utility_id']);
						print_r(array_keys($_SESSION['wish_list_item']));
						echo "</pre>";

						$_SESSION["wish_list_item"] = array_merge($_SESSION["wish_list_item"],$UtilityArray);

					}
				} else {
					$_SESSION["wish_list_item"] = $UtilityArray;
				}
			break;

		case "remove":
			if(!empty($_SESSION["wish_list_item"])) {
				foreach($_SESSION["wish_list_item"] as $k => $v) {
						if($_GET["utility_id"] == $k)
							unset($_SESSION["wish_list_item"][$k]);				
						if(empty($_SESSION["wish_list_item"]))
							unset($_SESSION["wish_list_item"]);
				}
			}
			break;

		case "empty":

			unset($_SESSION["wish_list_item"]);
			break;	
	}
}
?>
<HTML>
<HEAD>
<TITLE></TITLE>
<link href="../css/cart.css" type="text/css" rel="stylesheet" />
</HEAD>
<BODY>
<div id="shopping-cart">
<div class="txt-heading">Wish List <a id="btnEmpty" href="demowishlist.php?action=empty">Empty Wish List</a></div>
<?php
if(isset($_SESSION["wish_list_item"])){
    $item_total = 0;
?>	
<table cellpadding="10" cellspacing="1">
<tbody>
<tr>
<th style="text-align:left;"><strong>Name</strong></th>
<th style="text-align:left;"><strong>Utility_id</strong></th>
<!-- <th style="text-align:right;"><strong>Quantity</strong></th> -->
<th style="text-align:right;"><strong>Price</strong></th>
<th style="text-align:center;"><strong>Action</strong></th>
</tr>	
<?php		
    foreach ($_SESSION["wish_list_item"] as $item){
		?>
				<tr>
				<td style="text-align:left;border-bottom:#F0F0F0 1px solid;"><strong><?php echo $item["name"]; ?></strong></td>
				<td style="text-align:left;border-bottom:#F0F0F0 1px solid;"><?php echo $item["utility_id"]; ?></td>
				<!-- <td style="text-align:right;border-bottom:#F0F0F0 1px solid;"><?php //echo $item["quantity"]; ?></td> -->
				<td style="text-align:right;border-bottom:#F0F0F0 1px solid;"><?php echo "$".$item["price"]; ?></td>
				<td style="text-align:center;border-bottom:#F0F0F0 1px solid;"><a href="demowishlist.php?action=remove&utility_id=<?php echo $item["utility_id"]; ?>" class="btnRemoveAction">Remove Item</a></td>
				</tr>
				<?php
        $item_total = ($item["price"]);
		}
		?>

<tr>
<td colspan="5" align=right><strong>Total:</strong> <?php echo "$".$item_total; ?></td>
</tr>
</tbody>
</table>	 	
  <?php
}
?>
</div>

<h1>here</h1>

<div id="product-grid">
	<div class="txt-heading">Utilities</div>
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
			<form method="post" action="demowishlist.php?action=add&utility_id=<?php echo $utility_array[$key]['utility_id']; ?>">
			<div class="product-image"><img height="100" width="120" src="<?php echo $utility_image_array[0]['image_path']; ?>"></div>
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
</BODY>
</HTML> 