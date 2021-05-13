<?php
   include('session1.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>DONATION AMOUNT</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>
  <div class="w3-top">
    <div class="w3-row w3-large w3-black">
      <div class="w3-col s3">
        <a href="index.html" class="w3-button w3-block">Home</a>
      </div>
         <div class="w3-col s3">
        <a href="contactus.html" class="w3-button w3-block">Contact us</a>
      </div>

      <div class="w3-col s3">
     <a href="profile.php" class="w3-button w3-block">Your Profile</a>
     </div>


    </div>
  </div>

  <br>
  <br>

	<div class="container">

	<form action="" method="post"><br>

<div class="row">
      <div class="col-25">
		Enter your Donation amount <input type="number" name="maths"><br>
	</div>
</div>
<div class="row">
      <div class="col-25">
		<input type="submit" name="submit"><br>
	</div>

        </div></form>




    </div>
            </body>
            </html>
<?php



 	$maths_marks = false;
	if(isset($_POST['maths'])){
    $maths_marks = $_POST['maths'];
 	}
 	$sql= "UPDATE maths_marks SET maths_marks= '$maths_marks' WHERE id='$login_session' ";

 	if(mysqli_query($db, $sql)){
    echo 'Record was updated successfully.';



	} else {
    echo "ERROR: Could not able to execute $sql. "
                            . mysqli_error($db);
	}


	mysqli_close($db);


?>
