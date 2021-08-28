<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
	<title>Mentor Index</title>
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
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
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
  </div>
</nav>
	<div id="box">
	<br><br>
		<form method="post">
		<h1>	<div style="font-size: 20px;margin: 10px;color: black;">Choose filter for Mentor Index :</div></h6>
		<br>
		<!-- <h2>	<a href="mentor_feedback_display.php">Feedback</a></h1><br>
		<h2>	<a href="newfees.php">Set fees</a></h1><br>
		<h2>	<a href="choose.php">Logout</a></h1><br> -->
		<br><a class="btn btn-primary" href="mentor_feedback_display.php" role="button">Feedback</a><br><br>
		<br><a class="btn btn-primary" href="newfees.php" role="button">Set fees</a><br><br>
		<br><a class="btn btn-primary" href="Mentor_Allotment.php" role="button">Students Allotment</a><br><br>
		<br><a class="btn btn-success" href="choose.php" role="button">Logout</a><br><br>
		</form>
	</div>
</body>
</center>
</html>
	