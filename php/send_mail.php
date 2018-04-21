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
    // $limit = 12;

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }


    $mailto = $_SESSION['email_id'];//$_POST['mail_to'];
    $email_id = $mailto;
    $mailSub = "Your wishlist from craigslist";//$_POST['mail_sub'];
    $mailMsg = "<h2>Here are the items that you wanted :) </h2>";//$_POST['mail_msg'];

    $select_my_wishlist = "SELECT utility_id FROM wishlist WHERE email_id = '".$email_id."';";

    $items_set_id = mysqli_query($conn, $select_my_wishlist);
    while ($item_id = mysqli_fetch_assoc($items_set_id)) {

        $get_info = "SELECT * FROM utility where utility_id=".$item_id['utility_id'].";";
        $item_info = mysqli_query($conn, $get_info);
        $item_details = mysqli_fetch_assoc($item_info);

        $mailMsg .= "Item Name: ".$item_details["name"];
        $mailMsg .= "<br>";

        $mailMsg .= "Item Price: $ ".$item_details["price"];
        $mailMsg .= "<br>";

        $mailMsg .= "Item Description: ".$item_details["description"];
        $mailMsg .= "<br><br>";

        $mailMsg .= "Sellers's Information:";
        $mailMsg .= "<br>";
        $mailMsg .= "Email Id: ".$item_details["email_id"];
        $mailMsg .= "<br>";



        $mailMsg .= "<br><br><br>";
    }


    // Compose a simple HTML email message
// $message = '<html><body>';
// $message .= '<h1 style="color:#f40;">Hi Jane!</h1>';
// $message .= '<p style="color:#080;font-size:18px;">Will you marry me?</p>';
// $message .= '</body></html>';

// $mailMsg = $message;

   require '../PHPMailer-master/PHPMailerAutoload.php';
   $mail = new PHPMailer();
   $mail ->IsSmtp();
   $mail ->SMTPDebug = 0;
   $mail ->SMTPAuth = true;
   $mail ->SMTPSecure = 'ssl';
   $mail ->Host = "smtp.gmail.com";
   $mail ->Port = 465; // or 587
   $mail ->IsHTML(true);
   $mail ->Username = "craigslist.wpl@gmail.com";
   $mail ->Password = "QWERTYqwerty12#$";
   $mail ->SetFrom("craigslist.wpl@gmail.com");
   $mail ->Subject = $mailSub;
   $mail ->Body = $mailMsg;
   $mail ->AddAddress($mailto);

   if(!$mail->Send())
   {
       echo "Mail Not Sent";
   }
   else
   {
       echo "Sending email, please check you inbox";

       // echo "Adding to the cart";
          // $message = "item added to the cart";
          // echo "<script type='text/javascript'>alert('$message');</script>";
          // header("Location: ../html/homepage.php");
          header("refresh:0;../php/mywishlist.php");
          exit();
   }





   

