<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
	<title>Student Login</title>
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
	<div id="box">
		
		<form method="post">
			<div style="font-size: 20px;margin: 10px;color: black;">Student Login<br><br></div>
			<div style="font-size: 15px;margin: 10px;color: black;">Username <input id="text" type="text" name="user_name"><br><br></div>
			<div style="font-size: 15px;margin: 10px;color: black;">Password <input id="text" type="password" name="password"><br><br></div>
			

			<input id="button" type="submit" value="Login" name="Login"><br>
			<br><a class="btn btn-success" href="choose.php" role="button">Back</a><br><br>
		</form>
	</div>
</body>
</center>
</html>
<?php
 session_start();

$servername = "localhost";
$username = 'root';
$password = '';
$dbname = 'dbms1';

$dbname = mysqli_connect($servername,$username,$password,$dbname);


if(isset($_POST['Login']))
{
$user=$_POST['user_name']; 
$pass=$_POST['password'];
$sql="select * FROM student_login WHERE username ='$user' AND password ='$pass'"; 
$result = mysqli_query($dbname, $sql);
$rowcount=mysqli_num_rows($result); 
if($rowcount > 0)
{ 
	$sql1="select S_id from student_login where username='$user' and password='$pass'";
$result1 = mysqli_query($dbname, $sql1);
	while ($row = mysqli_fetch_assoc($result1)) {
        $hello1= $row['S_id'];
    }
		
//echo $hello1;

$file = $hello1;
//if(!isset($_SESSION['filename'])) {
    $_SESSION['two'] = $file;
//}
//echo $filename;
	header("Location: searchengine_sub.php");
	die;

}
else
  { 
	echo "Wrong username or password...";
  }
}

?>