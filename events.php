<?php
include('session1.php');
 ?>

 <html>
 <head>
   <title>LOGIN PAGE</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
 <style>




     body {font-family: Arial, Helvetica, sans-serif;}
 * {box-sizing: border-box}

 /* Full-width input fields */
 input[type=text], input[type=password] {
   width: 100%;
   padding: 15px;
   margin: 5px 0 22px 0;
   display: inline-block;
   border: none;
   background: #f1f1f1;
 }

 input[type=text]:focus, input[type=password]:focus {
   background-color: #ffff;
   outline: none;
 }

 hr {
   border: 1px solid #f1f1f1;
   margin-bottom: 25px;
 }

 /* Set a style for all buttons */
 button {
   background-color: #4CAF50;
   color: white;
   padding: 14px 20px;
   margin: 8px 0;
   border: none;
   cursor: pointer;
   width: 100%;
   opacity: 0.9;
 }

 button:hover {
   opacity:1;
 }

 /* Extra styles for the cancel button */
 .cancelbtn {
   padding: 14px 20px;
   background-color: #f44336;
 }

 /* Float cancel and signup buttons and add an equal width */
 .cancelbtn, .signupbtn {
   float: left;
   width: 50%;
 }

 /* Add padding to container elements */
 .container {
   padding: 16px;

 }

 /* Clear floats */
 .clearfix::after {
   content: "";
   clear: both;
   display: table;
 }

 /* Change styles for cancel button and signup button on extra small screens */
 @media screen and (max-width: 300px) {
   .cancelbtn, .signupbtn {
      width: 100%;
   }
 }
 .card {
   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
   max-width: 300px;
   margin: auto;
   text-align: center;
   font-family: arial;
 }

 .title {
   color: grey;
   font-size: 18px;
 }

 button {
   border: none;
   outline: 0;
   display: inline-block;
   padding: 8px;
   color: white;
   background-color: #4CAF50;
   text-align: center;
   cursor: pointer;
   width: 100%;
   font-size: 18px;
 }

 a {
   text-decoration: none;
   font-size: 22px;
   color: black;
 }

 button:hover, a:hover {
   opacity: 0.7;
 }


 .button {
   border: none;
   outline: 0;
   display: inline-block;
   padding: 8px;
   color: white;
   background-color: #ddd;
   text-align: center;
   cursor: pointer;
   width: 100%;
 }

 .button:hover {
   background-color: #ddd;
 }
 </style>
 </head>


     <body>

       <div class="w3-top" >
         <div class="w3-row w3-large w3-black">
           <div class="w3-col s3">
             <a href="index.html" class="w3-button w3-block" >Home</a>
           </div>
              <div class="w3-col s3">
             <a href="contactus.html" class="w3-button w3-block">Contact us</a>
           </div>
           <div class="w3-col s3">
           <a href="profile.php" class="w3-button w3-block">Your profile</a>
           </div>
           </div>


         </div>

 <div>
   <br><br>

 <?php
 $sql=" SELECT * FROM maths_marks WHERE id='$login_session'";

 $result = mysqli_query($db,$sql);

 $row = mysqli_fetch_array($result,MYSQLI_ASSOC);


 $count = mysqli_num_rows($result);
 if($count==1){

   		 if(mysqli_query($db, $sql)){
   			  } else {
   			 echo "ERROR: Could not able to execute $sql. "
   															 . mysqli_error($db);
   		 }
 }

 else {
   echo 'wrong Id entered';
 }
  ?>



     <div class="container">
       <h1>Welcome <?php echo $row['name']?></h1>
<br>
<a href="marathon.php"><h2>Register for Marathon</h2></a><br>
<a href="beach.php"><h2>Register for Beach Cleanup Drive</h2></a><br>
<a href="blood.php"><h2>Register for Blood Donation Campaign</h2></a><br>
</body>
</html>
