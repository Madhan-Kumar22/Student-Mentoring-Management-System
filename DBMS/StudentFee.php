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
<html>
<head> <title>Fee Calculation</title></head>
<center><body> 

<style type="text/css">
		 body {
    background-image: url("p3.jpeg");
	background-size:100%;
	background-color: #cccccc;
	} 
    #box{

		background-color:  #FFF176;
		margin: auto;
		width: 400px;
		padding: 20px;
	}
  table{
    background-color:  #FFF176;
		position: absolute;
        left: 50%;
        top: 100%;
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
<h1 style= "color: #FFFF00;">Fee Calculation by subject</h1>
<br>
<div id="box">
<form action="StudentFee.php" method="post"  class="center">
<div class="form-group">
<label for="exampleFormControlSelect2">Select Subject:</label>
<select class="form-control" id="exampleFormControlSelect2" name = 'subject' size = 4>  
                <!-- <option   value = 'Math'>Math</option> 
                <option   value = 'Biology'>Biology</option> 
                <option   value = 'Physics'>Physics</option> 
                <option   value = 'Chemistry'>Chemistry</option> 
                <option   value = 'Social Studies'>Social Studies</option> 
                <option   value = 'English'>English</option> 
				<option   value = 'Computer Science'>Computer Science</option>  -->

        
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
<br>
<input type="submit" name ="Display" value= "Display">
<br>

</form>
</body></center>
</html>


<?php

$Se_id = $_SESSION['two'];
$sub_name=$_SESSION['three'];
$id=$_SESSION['four'];
$servername = "localhost";
$username = 'root';
$password = '';
$dbname = 'dbms1';

$dbname = mysqli_connect($servername,$username,$password,$dbname);
// echo $id;
// echo $Se_id;
//  echo $sub_name;
if(isset($_POST['subject']))
{
$subject=$_POST['subject'];
}

if(isset($_POST['Display']))
{
	
$query = "SELECT b.fname,fees_per_hr, No_of_hrs ,  (fees_per_hr * No_of_hrs) as Total_Session_Fees, slot_or_date as Session_Date  FROM sessionmanagement as a,mentor_reg as b WHERE a.M_id=b.M_id and Sub_id=(select Sub_id from subject where Sub_name='$subject') and S_id = $Se_id";
$result = mysqli_query($dbname, $query);
echo "<br><br>";
echo "<h6 align='center' style= 'color: #FFFF00;'>$sub_name<br><br>";
echo"<table align='center' border ='1'>";

echo"<tr><td>Mentor Name</td><td>Fees Per hr</td><td>Session Duration (hrs)</td><td>Total Session Fees</td><td> Session_Date</td></tr>";
while($row = mysqli_fetch_assoc($result))
{
	echo"<tr><td>{$row['fname']}</td><td>{$row['fees_per_hr']}</td><td>{$row['No_of_hrs']}</td><td>{$row['Total_Session_Fees']}</td><td>{$row['Session_Date']}</td></tr>";
	
	
}


echo"</table>";

// Close connection
mysqli_close($dbname);

}
?>
