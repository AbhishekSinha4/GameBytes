<?php
	if(!IsSet($_SESSION)){
		session_start();
	}
	if(IsSet($_SESSION["m_id"])){
	}
	else if(IsSet($_SESSION["guest_id"])){
	}
	else{header("location: index.php");}
	// 	$_SESSION=Array();
	// 	session_destroy();
	// }
	// var_dump($_SESSION);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="../assets/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/home.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/results.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/centres.css">
	<script type="text/javascript" src="../assets/css/bootstrap-3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<header></header>
<nav id="nav" class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		    </button>
			<a href="#" class="navbar-brand">GameBytes</a>
		</div>
		<div class="collapse navbar-collapse" id="menu">
			<form class="form-inline" method="get" action="results.php">
		  		<input class="form-control" type="search" name="search" placeholder="Search" aria-label="Search">
		  		<select name="by">
		  			<option>Game</option>
		  			<option>Console</option>
		  			<option>Genre</option>
		  			<option>Centre</option>
		  			<option>Area</option>
		  		</select>
		    	<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		    </form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="home.php"><?php echo ucwords($_SESSION["m_fname"]);?></a></li>
				<li><a href="genres.php">Genres</a></li>
				<li><a href="games.php">Games</a></li>
				<li><a href="centres.php">Centres</a></li>
				<li><a href="consoles.php">Consoles</a></li>
				<li><a href="logout.php">Log Out</a></li>
			</ul>
		</div>
	</div>
</nav>
<div class="container">
<h1>Game Centres</h1>
<div id="centres">
<?php 
	
		$db='gamebytes';
		$conn=mysqli_connect('localhost','abhishek','abhishek98');
		mysqli_select_db($conn,$db);
		$query="select * from location order by l_name";
		$result=mysqli_query($conn,$query);
		for($j=0;$j<$result->num_rows;$j++){
			$row=mysqli_fetch_assoc($result);
			echo
			"
				<hr />
				<div class='eachcentre'>
					<div class='content-box'>
						<p>".$row['l_name']."   "."</p>
					</div>
					<div class='details'>
						<p>Address: ".$row['l_address']."</p>
						<p>Area code: ".$row['l_areacode']."</p>
						<form action='centredetails.php' method='GET'>
							<input type='radio' name='l_id' value='".$row['l_id']."' style='display: none' checked>
							<button class='more'>View Games and Reviews</button>
						</form>
					</div>
					<div class='clearing'></>
				</div>
			";
		}
?>
</div>
</div>
<script type="text/javascript" src="../assets/ajax.min.js"></script>
</body>
</html>