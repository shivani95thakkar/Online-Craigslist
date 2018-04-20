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
    <title>Utility</title>
    <!--Import Google Icon Font-->
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
          <li class="nav-item active">
            <a class="nav-link" href="#">Add Product <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../php/destroysession.php">Logout</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
      <h1>Add a Utility</h1>
      <form class="utility" method="post" action="../php/add-utility.php" enctype="multipart/form-data">

<!--         <div class="form-group has-success has-danger">
              <label>Username</label>
              <input type="text" class="form-control" id="username" name="username" placeholder="johndoe123">
              <div id="availability"> </div>
          </div> -->

          <div class="form-group">
              <label>Utility Name</label>
              <input type="text" class="form-control" id="name" name="name" placeholder="Enter the Utility name you want to sell !">
              <div id="availability"> </div>
          </div>


          <div class="form-group">
              <label>Image</label><br>
              <!-- <input type="text" class="form-control" id="name" name="name" placeholder="Enter the Utility name you want to sell !"> -->
              <input type="file" id="image" name="image">
          </div>



          <div class="form-group">
              <label>Category</label><br>
              <select name="category_id" class="form-control">
                <option value="1">For Sale</option>
                <option value="2">Housing</option>
              </select>
              <!-- <input type="Password" class="form-control" name="password" placeholder="Enter Password" id="password" required="required"> -->
          </div>


          

          <div class="form-group">
              <label>Price</label>
              <span><input type="text" class="form-control" name="price" placeholder="9.99" id="price" required="required">
              </span>
          </div>

          <div class="form-group">
              <label>Description</label>
              <span><input type="text" class="form-control" name="description" placeholder="Brief description..." id="description" required="required">
              </span>
          </div>

          <div class="form-group">
              <label>Availability</label><br>
              <input type="radio" name="isAvailable" value="1"> Available<br>
              <input type="radio" name="isAvailable" value="0"> Not Available<br>
          </div>
          

          <div class="form-group">
              <label>Street name</label>
              <input type="text" class="form-control" name="street" placeholder="Street" id="street" required="required">
          </div>
          
          <div class="form-group">
              <label>City</label>
              <input type="text" class="form-control" name="city" placeholder="City" id="city" required="required">
          </div>
          
          <div class="form-group">
              <label>State</label>
              <input type="text" class="form-control" name="state" placeholder="State Name" id="state" required="required">
          </div>

          <div class="form-group">
              <label>Country</label>
              <input type="text" class="form-control" name="country" placeholder="country" id="country" required="required">
          </div>

            <br>
          <input type="submit" class="btn btn-primary" value="Submit"></input>
      
      </form>
    </div>
    <div class="col-sm-3"></div>
  </div>
</body>
</html>