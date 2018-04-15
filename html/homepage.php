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
          <li class="nav-item active">
            <a class="nav-link" href="#">My Profile <span class="sr-only">(current)</span></a>
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
</body>
</html>
