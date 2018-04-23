<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
    if(!isset($_SESSION['email_id'])){
      header("Location: ../html/login.html");
    }
    if(!isset($_SESSION['isAdmin'])){
      header("Location: ../html/login.html");
    }
?>

<html>  
<head lang="en">  
    <meta charset="UTF-8">  
    <!-- <link type="text/css" rel="stylesheet" href="../bootstrap-3.2.0-dist/css/bootstrap.css"> --> <!--css file link in bootstrap folder-->  
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
    <title>View Users</title>  
</head>  
<style>  
    .login-panel {  
        margin-top: 150px;  
    }  
    .table {  
        margin-top: 50px;  
  
    }  
  
</style>  
  
<body>  

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <a class="navbar-brand" href="#">Craigslist</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Admin Panel<span class="sr-only">(current)</span></a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="../php/destroysession.php">Logout</a>
          </li>

        </ul>
      </div>
  </nav>
  
<div class="table-scrol">  
    <h1 align="center">All the Users</h1>  
  
<div class="table-responsive"><!--this is used for responsive display in mobile and other devices-->  
  
  
    <table class="table table-bordered table-hover table-striped" style="table-layout: fixed">  
        <thead>  
  
        <tr>  
  
            <th>Email Id</th>  
            <th>First Name</th>  
            <th>Last Name</th>  
            <th>Contact Number</th>  
            <th>Delete User</th>  
        </tr>  
        </thead>  
  
        <?php  
        
        $host = "localhost";
        $user = "root";
        $password = "root";
        $database = "craigslist";
        $conn;
        $conn = mysqli_connect($host,$user,$password,$database);
        //include("database/db_conection.php");
        $view_users_query="select * from user where is_deleted=0 and isAdmin = 0";//select query for viewing users.  
        $run=mysqli_query($conn,$view_users_query);//here run the sql query.  
  
        while($row=mysqli_fetch_array($run))//while look to fetch the result and store in a array $row.  
        {  
            $user_id=$row[0];  
            $user_name=$row[1];  
            $user_email=$row[2];  
            $user_pass=$row[3];  
  
  
  
        ?>  
  
        <tr>    
            <td><?php echo $user_id;  ?></td>  
            <td><?php echo $user_name;  ?></td>  
            <td><?php echo $user_email;  ?></td>  
            <td><?php echo $user_pass;  ?></td>  
            
             <td><a href="delete.php?del=<?php echo $user_id ?>"><button class="btn btn-danger">Delete</button></a></td>

        </tr>  
  
        <?php }?>  
  
    </table>  
        </div>  
</div>  
  
  
</body>  
  
</html> 