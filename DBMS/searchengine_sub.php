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
<head> <title>Search Engine</title></head>
<center><body> 
<br><br>
<h2>Search Engine by subject</h2>
<br>
<style type="text/css">
	
    #box{

		background-color: lightblue;
		margin: auto;
		width: 400px;
		padding: 20px;
	}
	table{
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
<div id="box">
<form id="myform" action="searchengine_sub.php" method="post"  class="center">



 <div class="form-group">
<label for="exampleFormControlSelect2">Select Subject:</label>
<select class="form-control" id="exampleFormControlSelect2" name = 'subject' size = 4>  

            
			 <!--    <option   value = 'Math'>Math</option> 
                <option   value = 'Biology'>Biology</option> 
                <option   value = 'Physics'>Physics</option> 
                <option   value = 'Chemistry'>Chemistry</option> 
                <option   value = 'Social Studies'>Social Studies</option> 
                <option   value = 'English'>English</option> 
				<option   value = 'Computer Science'>Computer Science</option> -->
            

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
<input type="submit" name ="submit" value= "Submit">
<br>
<br><a class="btn btn-success" href="index.php">Back to index</a><br><br>
</form>
</body></center>
</html>

<?php

/*
echo "<select id=name name=name class='form-control' style='width:100px;'>";



$sql="SELECT DISTINCT sub_name FROM subject as a, student_sub as b WHERE b.S_id='$Se_id' and a.Sub_id=b.Sub_id;"; 
$result1 = mysqli_query($dbname, $sql);

echo "<select name=student value=''>Subject</option>"; // list box select command
while ($row1 = mysqli_fetch_assoc($result1)){

echo "<option value=$row1[sub_name]>$row1[sub_name]</option>"; 
*/
/*
$sql="SELECT DISTINCT sub_name FROM subject as a, student_sub as b WHERE b.S_id='$Se_id' and a.Sub_id=b.Sub_id;";
$result1 = mysqli_query($dbname, $sql);
echo "<select name=\"subject\">"; 
echo "<option size =30 ></option>";
while($row = mysql_fetch_assoc($result1)) 
{        
echo "<option value='".$row['sub_name']."'>".$row['sub_name']."</option>"; 
}
echo "</select>";
*/
//}

 //echo "</select>";


if(isset($_POST['submit']))
{
	$sub_name=$_POST['subject'];
	$_SESSION['three']=$sub_name;

	$query = "SELECT R.fname,R.lname,R.M_id,R.city,F.fees_per_hr FROM mentor_reg R , fees F where R.M_id=F.M_id and F.Sub_id=(select Sub_id from subject where Sub_name='$sub_name') ";
	$result = mysqli_query($dbname, $query);
	echo "<br><br>";
	
echo "<p align='center'>$sub_name<br><br>";
echo"<table align='center' border ='1'>";

echo"<tr><td>Fname</td><td>Lname</td><td>City</td><td>Fees_per_hr</td><td>Choose</td></tr>";
while($row = mysqli_fetch_assoc($result))
{
//	echo"<tr><td>{$row['fname']}</td><td>{$row['lname']}</td><td>{$row['city']}</td><td>{$row['fees_per_hr']}</td></tr>";
	
	//echo '<td><input type="button" name="DISPLAY" value="DISPLAY"></td>';
	//
	//$_SESSION['four'] =$row['M_id'];
?>
  <tr>
    <td><?php echo $row['fname']; ?></td>
    <td><?php echo $row['lname']; ?></td>
    <td><?php echo $row['city']; ?></td>   
	<td><?php echo $row['fees_per_hr']; ?></td>
	<td><a href="sessionmanagement.php?id=<?php echo $row['M_id']; ?>">Select</a></td>	
	
	


  </tr>	
<?php
}


echo"</table>";
}
/*if(isset($_POST['submit1']))
{   
	$_SESSION['four'] =$row['M_id'];
	header("Location: SessionManagement.php");
	die;
}<td><input form="myform" type="submit" name ="submit1" value= "Select"></td>
*/
//<a href="SessionManagement.php?M_id=<?php echo $row['M_id']; ">Select</a>
//<input type="submit" name ="submit1" value= "Submit">



?>