<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
	<title>Session Management</title>
</head>
<center>
<body>



	<style type="text/css">
		 body {
    background-image: url("p3.jpeg");
	background-size:100%;
	background-color: #cccccc;
	} 
	#text{

		height: 25px;
		border-radius: 5px;
		padding: 4px;
		border: solid thin #aaa;
		width: 100%;
	}

	#button{

		padding: 10px;
		width: 100px;
		color: white;
		background-color: blue;
		border: none;
	}

	#box{

		background-color: #FFF176;
		margin: auto;
		width: 300px;
		padding: 20px;
	}

	</style>
<br><br>
<br><br>
<h1 style= "color: #FFFF00;">Session Management</h1>
<br>
<div id="box">
<form action="session_city.php" method="post"  class="center">
<label for="exampleFormControlSelect2">Select Session duration :</label>
<div class="form-group">
        	<input type="number" class="form-control" name="no_of_hrs" placeholder="No of hrs" required="required">
        </div>
        <label for="exampleFormControlSelect2">Select Session date :</label>
		<div class="form-group">
        <input type="date" class="form-control" name="slot" placeholder="Slot" required="required">
        </div>
        <br>
<input type="submit" name ="signup" value= "Book">
<br>
<br><a class="btn btn-success" href="City_search.php">Back</a><br><br>
        </div>
</form>       
</body>
</center>
</html>


<?php
session_start();
if(isset($_GET['M_id']))
{
$_SESSION['ten']=$_GET['M_id'];
}
if(isset($_GET['subname']))
{
$_SESSION['eleven']=$_GET['subname'];
}
$Se_id = $_SESSION['two'];
$id=$_SESSION['ten'];
$sub_name=$_SESSION['eleven'];

//echo $id;

$servername = "localhost";
$username = 'root';
$password = '';
$dbname = 'dbms1';

$dbname = mysqli_connect($servername,$username,$password,$dbname);

//$id = $_GET['a']; // get id through query string

// echo $id;
// echo $Se_id;
 //echo $sub_name;
if(isset($_POST['signup']))
{

    $no_of_hrs = $_POST['no_of_hrs'];
    $slot = $_POST['slot'];

$query = "insert into sessionmanagement values ('$Se_id','$id',(select Sub_id from subject where Sub_name='$sub_name'),(select fees_per_hr from fees where M_id='$id' and Sub_id=(select Sub_id from subject where Sub_name='$sub_name')),'$no_of_hrs','$slot')";
$result = mysqli_query($dbname, $query);
if($result){
    echo "Records inserted successfully in session management table";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($dbname);
}
}


?>
