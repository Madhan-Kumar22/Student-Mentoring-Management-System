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
<form action="SessionManagement.php" method="post"  class="center">
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
<br><a class="btn btn-success" href="searchengine_sub.php">Back</a><br><br>
        </div>
</form>       
</body>
</center>
</html>


<?php
//session_start();
session_start();
if(isset($_GET['id']))
{
$_SESSION['nine']=$_GET['id'];
//echo "h1";
//echo $vinesh;
}
//else
//$id=$_GET['id'];
//echo "h2";
$Se_id = $_SESSION['two'];
$sub_name=$_SESSION['three'];
$id=$_SESSION['nine'];
//$id=$_SESSION['eight'];
//$id->route('id');
//$id=$_GET['id'];
//echo $sub_name;
//$id=$_REQUEST['id'];
//$_SESSION['four']=$id;
	//echo $id;
	//$hello=$id;
$servername = "localhost";
$username = 'root';
$password = '';
$dbname = 'dbms1';
//echo $hello;
$dbname = mysqli_connect($servername,$username,$password,$dbname);

//$id = $_GET['a']; // get id through query string
//echo "fwe";
// echo $id;
// echo $Se_id;
 //echo $sub_name;
// echo $hello;
//echo $id;
//$hello=$id;
if(isset($_POST['signup']))
{//echo $id;
	//$hello=$_SESSION['four'];
	
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
