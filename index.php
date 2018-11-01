<?php
	if(!IsSet($_SESSION))session_start();
	if(IsSet($_SESSION["m_id"])){
	}
	else if(IsSet($_SESSION["guest_id"])){
	}
	else{
		$_SESSION=Array();
		session_destroy();
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>GameBytes</title>
	<script type="text/javascript" src="assets/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-3.3.7/css/bootstrap.min.css">
	<script type="text/javascript" src="assets/css/bootstrap-3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="assets/css/index.css">
</head>
<body>
<div id="screen">
	<!-- carousel -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		    <li data-target="#myCarousel" data-slide-to="3"></li>
		    <li data-target="#myCarousel" data-slide-to="4"></li>
		    <li data-target="#myCarousel" data-slide-to="5"></li>
		    <li data-target="#myCarousel" data-slide-to="6"></li>
		    <li data-target="#myCarousel" data-slide-to="7"></li>

		  </ol>

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">

		    <div class="item active">
		    <div id="_1" class="image"></div>
		      <div class="carousel-caption">
		        <h3>Developers</h3>
		        <p>Abhishek Sinha || Abhishek S || Aditya Pandey</p>
		      </div>
		    </div>

		    <div class="item">
		    <div id="_2" class="image"></div>
		      <div class="carousel-caption">
		        <h3>Developers</h3>
		        <p>Abhishek Sinha || Abhishek S || Aditya Pandey</p>
		      </div>
		    </div>

		    <div class="item">
		    <div id="_3" class="image"></div>
		      <div class="carousel-caption">
		        <h3>Developers</h3>
		        <p>Abhishek Sinha || Abhishek S || Aditya Pandey</p>
		      </div>
		    </div>

		    <div class="item">
		    <div id="_4" class="image"></div>
		      <div class="carousel-caption">
		        <h3>Developers</h3>
		        <p>Abhishek Sinha || Abhishek S || Aditya Pandey</p>
		      </div>
		    </div>
		  
		    <div class="item">
		    <div id="_5" class="image"></div>
		      <div class="carousel-caption">
		        <h3>Developers</h3>
		        <p>Abhishek Sinha || Abhishek S || Aditya Pandey</p>
		      </div>
		    </div>

		    <div class="item">
		    <div id="_6" class="image"></div>
		      <div class="carousel-caption">
		        <h3>Developers</h3>
		        <p>Abhishek Sinha || Abhishek S || Aditya Pandey</p>
		      </div>
		    </div>

		    <div class="item">
		    <div id="_7" class="image"></div>
		      <div class="carousel-caption">
		        <h3>Developers</h3>
		        <p>Abhishek Sinha || Abhishek S || Aditya Pandey</p>
		      </div>
		    </div>

		    <div class="item">
		    <div id="_8" class="image"></div>
		      <div class="carousel-caption">
		        <h3>Developers</h3>
		        <p>Abhishek Sinha || Abhishek S || Aditya Pandey</p>
		      </div>
		    </div>

		  </div>
	</div>


	<!-- Left and right controls -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	</a>
	<!-- heading -->
	<div id="heading">
		<div id="line_1">
			<div id="welcome" class="text"><h1>Welcome</h1></div>
			<div id="to" class="text"><h1>to</h1></div>
		</div>
		<div id="gamebytes" class="text"><h1>GameBytes</h1></div>
	</div>
	
	<!-- login signup etc buttons -->
	<div id="button_container">
		<div id="front">
			<div class="line"><button type="button" id="login" class="btn btn-outline-primary btn-lg">Log In</button></div>
			<div class="line"><a href="pages/register.php"><button type="button" class="btn btn-outline-primary btn-lg">Sign Up</button></a></div>
		</div>
		<div id="error-box">
		
		</div>
		<form id="back" method="POST" action="pages/home.php">
			<div class="line" id="email_line"><input type="text" name="memid" class="form-control" id="memid" placeholder="Member-id"></div>
			<div class="line" id="password_line"><input type="password" name="password" class="form-control" id="password" placeholder="Password"></div>
			<div class="line"><button type="submit" class="btn btn-outline-primary btn-lg" id="submit">Login ></button></div>
		</form>
	</div>	
</div>


<script type="text/javascript" src="assets/ajax.min.js"></script>
<script type="text/javascript" src="assets/js/index.js"></script>
</body>
</html>