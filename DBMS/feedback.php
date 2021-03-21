<?php

session_start();
$Se_id=$_SESSION['two'];
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
<head> <title>Feed Back</title></head>
<center>
<body> 
<br>
<h2>Mentor Feedback form</h2>
<br>
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
<div id="box">
<form action="feedback.php" method="post" class="center">
<div class="form-group">
    <label>First Name:</label>
    <input type="text" class="form-control"  name="fname">
   
	<div class="form-group">
    <label for="exampleFormControlSelect2">Subject:</label>
    <select class="form-control" id="exampleFormControlSelect2" name = 'subject' size = 6>
	<!-- <option value = 'Math'>Math</option> 
                <option value = 'Biology'>Biology</option> 
                <option value = 'Physics'>Physics</option> 
                <option value = 'Chemistry'>Chemistry</option> 
                <option value = 'Social Studies'>Social Studies</option> 
                <option value = 'English'>English</option> 
				<option value = 'Computer Science'>Computer Science</option>  -->


				
				<?php  
				$sql="SELECT DISTINCT sub_name FROM subject as a, student_sub as b WHERE b.S_id='$Se_id' and a.Sub_id=b.Sub_id;";
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
  </div>

  </div>
  <div class="form-group">
    <label>Rating:</label>
    <input type="number" class="form-control"  name="rating">
   
  </div>
  <div class="form-group">
    <label>Feedback:</label>
    <input type="text" class="form-control"  name="feedback">
   
  </div>


<br>
<input type="submit" name ="submit" value= "submit">
<br>

<br><a class="btn btn-success" href="index.php" role="button">Back to index</a><br><br>
</form>
</div>

</body></center>
</html>

<?php
$servername = "localhost";
$username = 'root';
$password = '';
$dbname = 'dbms1';

$dbname = mysqli_connect($servername,$username,$password,$dbname);

if(isset($_POST['submit']))
{
	$fname=$_POST['fname'];
	$sub_name=$_POST['subject'];
	$rating=$_POST['rating'];
	$feedback=$_POST['feedback'];
	
	$sql1="update feedback set Rating='$rating' ,feedback='$feedback' where Sub_name='$sub_name' and M_id=(select M_id from mentor_reg where fname='$fname')";
	if(mysqli_query($dbname, $sql1)){
    echo "Records inserted successfully in feedback table";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($dbname);
}
}
?>