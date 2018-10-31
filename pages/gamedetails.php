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
	if($_SERVER["REQUEST_METHOD"]!="GET")header("location: home.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="../assets/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/home.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/results.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/genres.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/details.css">
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
<?php 
	
		$db='gamebytes';
		$conn=mysqli_connect('localhost','abhishek','abhishek98');
		mysqli_select_db($conn,$db);
		$query="select * from game where g_id='".$_GET["g_id"]."';";
		$result=mysqli_query($conn,$query);
		$row=mysqli_fetch_assoc($result);
		echo "<h1>".$row["g_name"]."</h1>";
		echo "<div id='game'>";
		echo
		"	<div class='content-box'>
				<p>".$row['g_name']."   "."</p>
			</div>
			<div class='details'>
				<p>Publisher: ".$row['g_publisher']."</p>
				<p>Release Year: ".$row['g_release']."</p>
				<p>Price: ".$row['g_price']." /-</p>
				<p>Age Requirement: ".$row['r_id']."+</p>
			
		";
		$query="select * from genre natural join game_genre where g_id='".$_GET["g_id"]."';";
		$result=mysqli_query($conn,$query);
		echo "<p>Genre: ";
		for($j=0;$j<$result->num_rows;$j++){
			$row=mysqli_fetch_assoc($result);
			echo $row["genre_name"];
			if($j<$result->num_rows-1)echo ", ";
		}
		echo "</p>";
		echo"
			</div>
			<div class='clearing'></>";
		
		if(!IsSet($_GET["l_id"])){
			echo "<div id='locations'><h2>All Locations</h2>";

			$query="select * from location natural join game_location where g_id='".$_GET["g_id"]."';";
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
								<input type='radio' name='g_id' value='".$row['g_id']."' style='display: none' checked>
								<button class='more'>Book ></button>
							</form>
						</div>
						<div class='clearing'></div>
					</div>
				";
			}
			if(!$result->num_rows)echo "<h3>Game Unavailable</h3>";
			echo "</div>";
		}
		echo "<div id='reviews'><h2>All Reviews</h2>";
		$query="select * from game_reviews natural join member where g_id='".$_GET["g_id"]."';";
		$result=mysqli_query($conn,$query);
		for($j=0;$j<$result->num_rows;$j++){
			$row=mysqli_fetch_assoc($result);
			echo
			"
				<hr />
				<div class='eachgame'>
					<div class='content-box'>
						<p>".$row['m_fname']." ".$row['m_lname']."   "."</p>
					</div>
					<div class='details'>
						<p>Title: ".$row['g_r_title']."</p>
						<p>Review: ".$row['g_r_review']."</p>
						<p>Stars: ".$row['g_r_stars']."/10</p>
					</div>
					<div class='clearing'></div>
				</div>
			";
		}
		if(!$result->num_rows)echo "<h3>No Reviews</h3>";
		echo "</div>"; 
		echo"</div>";
		if(IsSet($_GET["l_id"])){
			echo   "<form action='book.php' method='GET'>
						<input type='radio' name='l_id' value='".$_GET['l_id']."' style='display: none' checked>
						<input type='radio' name='g_id' value='".$_GET['g_id']."' style='display: none' checked>
						<button id='book'>Book slot? ></button>
					</form>";
		}
	
?>
</div>
<script type="text/javascript" src="../assets/ajax.min.js"></script>
</body>
</html>