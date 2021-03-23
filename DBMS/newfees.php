<?php

session_start();
$Me_id = $_SESSION['one'];
//$Se_id=$_SESSION['two'];
//$_SESSION['four']=$sub_name;
//echo $_SESSION['three'];
//echo $Se_id;
$servername = "localhost";
$username = 'root';
$password = '';
$dbname = 'dbms1';

$dbname = mysqli_connect($servername,$username,$password,$dbname);
?>



<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<html>
<head> <title>Fees</title></head>
<center><body> 

<style type="text/css">
	body {
 background-image: url("m.JPEG");
 background-color: #cccccc;
}
	#box{

		background-color: #FFF176;
		margin: auto;
		width: 400px;
		padding: 20px;
	}

	</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="choose.php">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="mentor_feedback_display.php">Feedback <span class="sr-only">(current)</span></a>
      </li>

	  <li class="nav-item active">
        <a class="nav-link" href="newfees.php">Set fees <span class="sr-only">(current)</span></a>
      </li>

	  <li class="nav-item active">
        <a class="nav-link" href="Mentor_Allotment.php">Students Allotment <span class="sr-only">(current)</span></a>
      </li>
      </ul>
      <form class="form-inline">
      <a class="btn btn-success" href="choose.php" role="button">Logout</a>
    
  </form>
  </div>
</nav>
<br><br>
<br><br>
<h1 style= "color: #FFFF00;">Fees</h1>
<br>
<div id="box">
<form action="newfees.php" method="post" class="center">
<div class="form-group">
<label for="exampleFormControlSelect2">Subject:</label>
<select  class="form-control" id="exampleFormControlSelect2" name = 'subject' size = 4>  
                <!-- <option  value = 'Math'>Math</option> 
                <option  value = 'Biology'>Biology</option> 
                <option  value = 'Physics'>Physics</option> 
                <option  value = 'Chemistry'>Chemistry</option> 
                <option  value = 'Social Studies'>Social Studies</option> 
                <option  value = 'English'>English</option> 
				<option  value = 'Computer Science'>Computer Science</option>  -->
                <?php  
				$sql="SELECT DISTINCT sub_name FROM subject as a, mentor_sub as b WHERE b.M_id='$Me_id' and a.Sub_id=b.Sub_id;";
				$result1 = mysqli_query($dbname, $sql);
                while($row = mysqli_fetch_assoc($result1)) 
				{ 
                ?>  
                    <option value="<?php echo $row['sub_name']; ?>" >  
                                  <?php echo $row['sub_name'];?>  
                    </option>  
                <?php  
                }  
                ?> 
            </select> 
            <br><br>
 	Fees per hour:  
		<input type="number" name="fees">
        <br>
        <br>
  
 <input type="submit" name ="submit" value= "submit">
 
</form>
</div>
</body></center>
</html>

<?php
//session_start();
//$Me_id = $_SESSION['one'];

$servername = "localhost";
$username = 'root';
$password = '';
$dbname = 'dbms1';

$dbname = mysqli_connect($servername,$username,$password,$dbname);

if(isset($_POST['submit']))
{
$Fees = $_POST['fees'];
$sub_name= $_POST['subject'];


$sql ="update fees set fees_per_hr='$Fees' where M_id='$Me_id' and Sub_id=(select Sub_id from subject where Sub_name='$sub_name')";


if(mysqli_query($dbname, $sql)){
    echo "Records inserted successfully in fees table.";
} else{
    echo "ERROR1: Could not able to execute $sql. " . mysqli_error($dbname);
}
}
if(isset($_POST["Next"]))
{
       header("Location: newfees.php");
       die;
}
?>