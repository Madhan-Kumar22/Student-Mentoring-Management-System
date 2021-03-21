<?php
session_start();
$Se_id = $_SESSION['two'];
//echo $Se_id;
?>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
	<title>Student Index </title>
</head>
<center>
<body>

	<style type="text/css">
	
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
		background-color: lightblue;
		border: none;
	}

	#box{

		background-color: lightblue;
		margin: auto;
		width: 400px;
		padding: 20px;
	}

	</style>
		<br>
	<div id="box">
	<br>
		<form method="post">
		<h1>	<div style="font-size: 20px;margin: 10px;color: black;">Student Index :</div></h6>
		<br>

		<br><a class="btn btn-primary" href="Msearch.php" role="button">Mentor Search</a><br><br>
		<br><a class="btn btn-primary" href="feedback.php" role="button">Feedback</a><br><br>
		<br><a class="btn btn-primary" href="ResourceSharing.php" role="button">Resource Sharing</a><br><br>
		<br><a class="btn btn-primary" href="StudentFee.php" role="button">Fees</a><br><br>
		<br><a class="btn btn-success" href="choose.php" role="button" colour="Orange">Logout</a><br><br>
		</form>
	</div>
</body>
</center>
</html>
	
<?php 

if(isset($_POST['Login']))
{
	header("Location: rough2.php ");
	die;
}
?>