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
<head> <title>Mentor Feed back Display</title></head>
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
	table{
		position: absolute;
        left: 50%;
        top: 80%;
        transform: translate(-50%, -50%);
        border-collapse: collapse;
        width: 300px;
        height: 100px;
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

<br><br>
<h2>Mentor Feedback Display</h2>
<br>
<div id="box">
<form action="mentor_feedback_display.php" method="post">
<div class="form-group">
    <label for="exampleFormControlSelect2">Subject:</label>
    <select  class="form-control" id="exampleFormControlSelect2" name = 'subject' size = 4>
	<!-- <option value = 'Math'>Math</option> 
                <option value = 'Biology'>Biology</option> 
                <option value = 'Physics'>Physics</option> 
                <option value = 'Chemistry'>Chemistry</option> 
                <option value = 'Social Studies'>Social Studies</option> 
                <option value = 'English'>English</option> 
				<option value = 'Computer Science'>Computer Science</option>  -->

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
  </div>
  <br>
<input type="submit" name ="Display" value= "Display"><br>
<br><br><a class="btn btn-success" href="Mindex.php" role="button">Back to index</a><br><br>
</form>
</div>
</body></center>
</html>

<?php
//session_start();
//$Me_id = $_SESSION['one'];
//echo $Me_id;
//$Me_id=18;
$servername = "localhost";
$username = 'root';
$password = '';
$dbname = 'dbms1';

$dbname = mysqli_connect($servername,$username,$password,$dbname);


if(isset($_POST['subject']))
{
$subject=$_POST['subject'];

}
if(isset($_POST['Display']))
{
	
$query = "SELECT Sub_name,Rating,feedback FROM feedback where M_id='$Me_id' and Sub_name= '$subject' ";
$result = mysqli_query($dbname, $query);
echo "<br><br>";
echo"<table align='center' border ='1'>";

echo"<tr><td>Sub_name</td><td>Rating</td><td>feedback</td></tr>";
while($row = mysqli_fetch_assoc($result))
{
	echo"<tr><td>{$row['Sub_name']}</td><td>{$row['Rating']}</td><td>{$row['feedback']}</td></tr>";
	
	
}


echo"</table>";

// Close connection
mysqli_close($dbname);

}
?>