<?php
include("config.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>DELETE Profile</title>
		    <meta name="viewport" content="width=device-width, initial-scale=1">
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
	<div class="container">
	<form method="post"><br>
		<div class="row">
      		<div class="col-25">
		Enter the Profile ID who is  to be deleted<input type="number" name="id"><br>
			</div>
		</div>
		<div class="row">
      		<div class="col-25">
		<input type="submit" name="submit">
			</div>
		</div>
	</form><br>
	<a href="welcomea.php">Go Back</a>
</div>

<?php
include("config.php");
$id=filter_input(INPUT_POST,'id');
if($id!=0){
$sql="DELETE FROM maths_marks WHERE id = '$id'";
if(mysqli_query($db, $sql)){
    echo "Record was updated successfully.";
	} else {
    echo "ERROR: Could not able to execute $sql. "
                            . mysqli_error($db);
	}
}
	mysqli_close($db);
?>

</body>
</html>
