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
  <title>Homepage</title>
      <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
    <link href="../css/cart.css" type="text/css" rel="stylesheet" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">
      function filter_result() {
        // body...
        $.ajax({
          type: "POST",
          url: "../php/searchandfilter.php",
          data: jQuery("#filter-form").serialize(),
          success: function(data){
            document.getElementById("results").innerHTML = data;
          }
        });
      }
    </script>

    
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




<form id = 'filter-form' method ='POST' class="form-inline my-2 my-lg-0" >

      <div style="margin-right: 10px">
      <select class="custom-select" name='category'>

             <?php

                if(isset($_SESSION['category']) and $_SESSION['category']=='all'){
                  ?>
                  <option selected="<?php echo (isset($_SESSION['category']) and $_SESSION['category']=='all')?'selected':'false'; ?>" value="all">All</option>
                  <?php
                }
                else{
                  ?>
                    <option value="all">All</option>
                  <?php

                }

                if(isset($_SESSION['category']) and $_SESSION['category']=='1'){
                  ?>
                  <option selected="<?php echo (isset($_SESSION['category']) and $_SESSION['category']=='1')?'selected':'false'; ?>" value="1">For Sale</option>
                  <?php
                }
                else{
                  ?>
                    <option value="1">For Sale</option>
                  <?php

                }

                if(isset($_SESSION['category']) and $_SESSION['category']=='2'){
                  ?>
                  <option selected="<?php echo (isset($_SESSION['category']) and $_SESSION['category']=='2')?'selected':'false'; ?>" value="2">Housing</option>
                  <?php
                }
                else{
                  ?>
                    <option value="2">Housing</option>
                  <?php

                }



            ?>

<!--             <?php 

//                $select_all_category = "SELECT * FROM utility_category;";

//                $result = mysqli_query($conn, $select_all_category);


  //              while($row = mysqli_fetch_assoc($result)){
    //              echo "<option value='".$row["category_id"]."'>".$row["name"]."</option>";
     //           }

            ?> -->

            


            <!-- <option value='1'>One</option>
            <option value="2">Two</option>
            <option value="3">Three</option> -->


          </select>
      </div>
      <input id="searchbar" class="form-control mr-sm-2" type="text" placeholder="Search" value="<?php echo (isset($_SESSION['searchString']))?trim($_SESSION['searchString'], '%'):''; ?>" name='searchString'>
      
      <input class="btn btn-secondary my-2 my-sm-0" type="button" value="Search" onclick="filter_result()">


    </form>

    </nav>


    


<!-- 
  <div class="txt-heading">Utilities</div> -->
  <?php

  
  

  if(isset($_SESSION['category']))
    $category = $_SESSION['category'];
  else
    $category = 'all';

  if(isset($_SESSION['searchString']) and $_SESSION['searchString'] != "")
    $searchString = $_SESSION['searchString'];
  else
    $searchString = '%';

?>

<?php
//      echo "Category: ".$category;
//      echo "<br>Search String: ".$searchString;
      echo '<h1>hello '.$_SESSION['email_id'].'</h1>';
    ?>

<div id = "results">

<div id="product-grid">
<?php



  if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; };  
    $start_from = ($page-1) * $limit; 

    if($category == 'all'){
    $query = "SELECT * FROM utility WHERE is_deleted <> '1' AND name LIKE '$searchString' ORDER BY timestamp DESC LIMIT $start_from, $limit;";
    $sql = "SELECT COUNT(*) FROM utility WHERE is_deleted <> '1' AND name LIKE '$searchString';";
  }
  else
  {
    // $temp = "%".$searchString."%";
    // echo "<br>".$temp;
    $query = "SELECT * FROM utility WHERE is_deleted <> '1' AND category_id=".$category." AND name LIKE '%%$searchString%%' ORDER BY timestamp DESC LIMIT $start_from, $limit;";  
    $sql = "SELECT COUNT(*) FROM utility WHERE is_deleted <> '1' AND category_id=".$category." AND name LIKE '%%$searchString%%';";
  }

  $result = mysqli_query($conn, $query);

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
      <div><strong><a href="../php/view-product-details.php?page=<?php echo $page; ?>&utility_id=<?php echo $row["utility_id"]; ?>"> <?php echo $row["name"]; ?> </a></strong></div>
      <div class="product-price"><?php echo $row["category_id"]; ?></div>
      <div class="product-price"><?php echo "$".$row["price"]; ?></div>
      <div><input type="submit" value="Add to wishlist" class="btn btn-success" /></div>
      
      </form>
    </div>
<?php } ?>



</div>






<?php  
  ///$sql = "SELECT COUNT(*) FROM utility WHERE is_deleted <> '1';";  
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
             $pagLink .= " "."<a class='page-link' href='../html/homepage.php?page=".$i."'>".$i."</a>";  
  };  
  echo $pagLink . "</div>";  

  echo "</div>"
?>

</div>



<!-- <script type="text/javascript">
      $document.ready(function(){
        <?php 
        //    if(isset($_SESSION['category']))
             // $category = $_SESSION['category'];
          //  else
             // $category = 'all';

            //if(isset($_SESSION['searchString']))
             // $searchString = $_SESSION['searchString'];
           // else
             // $searchString = '';
        ?>
            $("#searchbar").val($searchString);
        
      });
    </script> -->


</body>
</html>