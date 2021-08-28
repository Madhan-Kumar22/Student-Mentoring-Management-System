<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<html>
<head> <title>Search Engine by city</title></head>
<center><body> 

<style type="text/css">
	 body {
    background-image: url("p3.jpeg");
	background-size:100%;
	background-color: #cccccc;
	} 
	#box{

		background-color: #FFF176;
		margin: auto;
		width: 400px;
		padding: 20px;
	}
	table{
        background-color: #FFF176;
		position: absolute;
        left: 50%;
        top: 75%;
        transform: translate(-50%, -50%);
        border-collapse: collapse;
        width: 600px;
        height: 200px;
        border: 1px solid #bdc3c7;
        box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2), -1px -1px 8px rgba(0, 0, 0, 0.2);
}
    tr {
        transition: all .2s ease-in;
        cursor: pointer;
		font-family: 'Montserrat', sans-serif;
    }
	
    
    th,td {
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }
    
    #header {
        background-color: #42A5F5;
        color: #fff;
		text-transform: uppercase;
    }
    
    tr:hover {
        background-color: lightblue;
        transform: scale(1.02);
        box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2), -1px -1px 8px rgba(0, 0, 0, 0.2);
    }
    
    @media only screen and (max-width: 768px) {
        table {
            width: 90%;
        }
    }
</style>
</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="choose.php">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="searchengine_sub.php">Search By Subject <span class="sr-only">(current)</span></a>
      </li>

	  <li class="nav-item active">
        <a class="nav-link" href="City_search.php">Search By City <span class="sr-only">(current)</span></a>
      </li>

	  <li class="nav-item active">
        <a class="nav-link" href="feedback.php">Feedback <span class="sr-only">(current)</span></a>
      </li>

      <li class="nav-item active">
        <a class="nav-link" href="ResourceSharing.php"> Resource Sharing <span class="sr-only">(current)</span></a>
      </li>

      <li class="nav-item active">
        <a class="nav-link" href="StudentFee.php"> Fees <span class="sr-only">(current)</span></a>
      </li>
      </ul>
      <form class="form-inline">
      <a class="btn btn-success" href="choose.php" role="button">Logout</a>
    
  </form>
  </div>
</nav>
<br><br>
<br><br>
<h1 style= "color: #FFFF00;">Search Engine by city</h1>
<br>
<div id="box">
<form action="City_search.php" method="post" class="center">
<input type="submit" name ="submit" value= "Search">

</form>
</body></center>
</html>

<?php
session_start();
$Se_id = $_SESSION['two'];


$servername = "localhost";
$username = 'root';
$password = '';
$dbname = 'dbms1';

$dbname = mysqli_connect($servername,$username,$password,$dbname);

if(isset($_POST['submit']))
{

	//$city=$_POST['city'];
	$query1 = " select city from student_reg where S_id='$Se_id' ";
	$result1 = mysqli_query($dbname, $query1);
 
 while($row1 = mysqli_fetch_assoc($result1))
 {
	 echo"<center><h5 style= 'color: #FFFF00;'>Your city is {$row1['city']}</h5></center>";
	
 }
 


	$query = "SELECT R.fname,R.lname,S.sub_name,R.M_id ,F.fees_per_hr FROM mentor_reg R , fees F, subject S where S.Sub_id IN(select Sub_id from Student_sub where S_id='$Se_id') and S.Sub_id=F.Sub_id and R.M_id=F.M_id and R.city=(select city from student_reg where S_id= '$Se_id'); ";
	$result = mysqli_query($dbname, $query);
	echo "<br><br>";
//echo "<p align='center'>$city<br><br>";
echo"<table align='center' border ='1'>";

echo"<tr><td>Fname</td><td>Lname</td><td>Subject</td><td>Fees_per_hr</td><td>Choose</td></tr>";
while($row = mysqli_fetch_assoc($result))
{
	//echo"<tr><td>{$row['fname']}</td><td>{$row['lname']}</td><td>{$row['sub_name']}</td><td>{$row['fees_per_hr']}</td></tr>";

	//$_SESSION['five']=$row['M_id'];
	//echo $_SESSION['five'];
	//$_SESSION['seven']=$row['sub_name'];
	//echo $_SESSION['seven'];
//echo $_SESSION['five'];
?>
  <tr>
    <td><?php echo $row['fname']; ?></td>
    <td><?php echo $row['lname']; ?></td>
    <td><?php echo $row['sub_name']; ?></td>   
	<td><?php echo $row['fees_per_hr']; ?></td>  
	<td><a href="session_city.php?M_id=<?php echo $row['M_id']; ?>&subname=<?php echo $row['sub_name']; ?>">Select</a>
  </tr>	
<?php
}


echo"</table>";
}
?>