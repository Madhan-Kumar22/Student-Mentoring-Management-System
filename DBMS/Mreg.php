<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<title>Mentor Sign up</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script> 
<style>
body {
	color: #fff;
	background: #3598dc;
	font-family: 'Roboto', sans-serif;
}
.form-control {
	height: 41px;
	background: #f2f2f2;
	box-shadow: none !important;
	border: none;
}
.form-control:focus {
	background: #e2e2e2;
}
.form-control, .btn {        
	border-radius: 3px;
}
.signup-form {
	width: 400px;
	margin: 30px auto;
}
.signup-form form {
	color: #999;
	border-radius: 3px;
	margin-bottom: 15px;
	background: #fff;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.signup-form h2  {
	color: #333;
	font-weight: bold;
	margin-top: 0;
}
.signup-form hr  {
	margin: 0 -30px 20px;
}    
.signup-form .form-group {
	margin-bottom: 20px;
}
.signup-form input[type="checkbox"] {
	margin-top: 3px;
}
.signup-form .row div:first-child {
	padding-right: 10px;
}
.signup-form .row div:last-child {
	padding-left: 10px;
}
.signup-form .btn {        
	font-size: 16px;
	font-weight: bold;
	background: #3598dc;
	border: none;
	min-width: 140px;
}
.signup-form .btn:hover, .signup-form .btn:focus {
	background: #2389cd !important;
	outline: none;
}
.signup-form a {
	color: #fff;
	text-decoration: underline;
}
.signup-form a:hover {
	text-decoration: none;
}
.signup-form form a {
	color: #3598dc;
	text-decoration: none;
}	
.signup-form form a:hover {
	text-decoration: underline;
}
.signup-form .hint-text  {
	padding-bottom: 15px;
	text-align: center;
}
</style>
</head>
<body>
<div class="signup-form">
    <form action="Mreg.php" method="post">
		<h2>Sign Up</h2>
		<p>Please fill in this form to create an account!</p>
		<hr>
        <div class="form-group">
			<div class="row">
				<div class="col"><input type="text" class="form-control" title="Can't be null" name="fname" placeholder="First Name" required="required"></div>
				<div class="col"><input type="text" class="form-control" title="Can be empty" name="lname" placeholder="Last Name" required="required"></div>
			</div>        	
        </div>
        <div class="form-group">
        	<input type="email" class="form-control" title="Must include @ and ." name="email" placeholder="Email" required="required">
        </div>
		<div class="form-group">
            <input type="number" class="form-control" title="Must be 10 digits only" name="contact" placeholder="Contact" required="required">
        </div>
		<div class="form-group">
            <input type="text" class="form-control" name="city" placeholder="City" required="required">
        </div>
		<div class="form-group">
            <input type="text" class="form-control" name="qual" placeholder="Qualification" required="required">
        </div>
		<div class="form-group">
            <input type="text" class="form-control" name="resume" title="Must include ." placeholder="Resume_link" required="required">
        </div>
		<div><div>Topic Name</div>
		    <select name = 'subject[]' multiple size = 6 title="Can choose multiple subjects">   
                <option value = 'Math'>Math</option> 
                <option value = 'Biology'>Biology</option> 
                <option value = 'Physics'>Physics</option> 
                <option value = 'Chemistry'>Chemistry</option> 
                <option value = 'Social Studies'>Social Studies</option> 
                <option value = 'English'>English</option> 
				<option value = 'Computer Science'>Computer Science</option> 
            </select> 
		</div>
		<div class="form-group">
            <input type="text" class="form-control" title="Username cannot be empty" name="user" placeholder="Username" required="required">
        </div> 
		<div class="form-group">
            <input type="password" class="form-control" title="Password cannot be empty" name="password" placeholder="Password" required="required">
        </div>        
		<div class="form-group">
            <input type="submit" class="btn btn-primary btn-lg" name ="signup" value= "Signup">
        </div>
    </form>
		<div class="hint-text">Already have an account? <a href="Mlogin.php">Login here</a></div>
		<div class="hint-text"><a href="choose.php">Back</a></div>
</body>
</html>


<?php
$servername = "localhost";
$username = 'root';
$password = '';
$dbname = 'dbms1';

$dbname = mysqli_connect($servername,$username,$password,$dbname);

/*

 
if(isset($_POST["Login"]))
{
       header("Location: Mlogin.php");
       die;
}
*/
if(isset($_POST['signup']))
{
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$qual = $_POST['qual'];
$resume = $_POST['resume'];
$emailid = $_POST['email'];
$contact = $_POST['contact'];
$city = $_POST['city'];
$user = $_POST['user'];
$pass = $_POST['password'];


$sql =" insert into mentor_reg (fname,lname,email,contact,city,Qualification,Resume_link)values ('$fname','$lname','$emailid','$contact','$city','$qual','$resume')";


if(mysqli_query($dbname, $sql)){
    echo "Records inserted successfully in mentor_reg table.";
} else{
    echo "ERROR1: Could not able to execute $sql. " . mysqli_error($dbname);
}
 
 $sql1=" insert into mentor_login values((select M_id from mentor_reg where fname = '$fname'),'$user','$pass')";
 
  if(mysqli_query($dbname, $sql1)){
    echo "Records inserted successfully in mentor_login table";
} else{
    echo "ERROR2: Could not able to execute $sql. " . mysqli_error($dbname);
}
 
 
 
 if(isset($_POST["subject"]))  
        { 
            // Retrieving each selected option 
            foreach ($_POST['subject'] as $subject)  
			{
				$sql3=" insert into mentor_sub values((select M_id from mentor_reg where fname = '$fname'),(select Sub_id from subject where Sub_name='$subject'))";
				mysqli_query($dbname, $sql3);
				$sql4=" insert into feedback (M_id,Sub_name)values((select M_id from mentor_reg where fname = '$fname'),'$subject')";
				mysqli_query($dbname, $sql4);
                $sql5=" insert into fees (M_id,Sub_id)values((select M_id from mentor_reg where fname = '$fname'),(select Sub_id from subject where Sub_name='$subject'))";
                mysqli_query($dbname, $sql5);
           
				
			}
        } 
  else
        echo "Select an option first !!"; 
	//
	//
	//
	//
	
	//
	//
	//
	//
 
 
 if(isset($_POST["Login"]))
 {

        header("Location: Mlogin.php");
        die;
 }
 

// Close connection
mysqli_close($dbname);

}
?>