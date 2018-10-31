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
	<!-- <link rel="stylesheet" type="text/css" href="../assets/css/genres.css"> -->
	<link rel="stylesheet" type="text/css" href="../assets/css/book.css">
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
<div class="container" id="details">
<h1>Booking Confirmation</h1>
<?php 
	
		$db='gamebytes';
		$conn=mysqli_connect('localhost','abhishek','abhishek98');
		mysqli_select_db($conn,$db);
		$query="select * from game where g_id='".$_GET["g_id"]."';";
		$result=mysqli_query($conn,$query);
		$row=mysqli_fetch_assoc($result);
		echo "<p>Game: ".$row["g_name"]."</p>";
		$query="select * from location where l_id='".$_GET["l_id"]."';";
		$result=mysqli_query($conn,$query);
		$row=mysqli_fetch_assoc($result);
		echo "<p>Centre: ".$row["l_name"]."</p>";
		$query="select * from game_console natural join console where g_id='".$_GET["g_id"]."';";
		$result=mysqli_query($conn,$query);
		echo "<p>Consoles: ";
		for($j=0;$j<$result->num_rows;$j++){
			$row=mysqli_fetch_assoc($result);
			echo $row["c_name"];
			if($j<$result->num_rows-1)echo ", ";
		}
		echo "</p>";
?>
<form action="booked.php" method="POST">
	<p>Select date: <input type="date" name="date" required></p>
	<p>Select start time: <input type="time" name="st_time" required></p>
	<p>Select end time: <input type="time" name="end_time" required></p>
	<?php echo "<input type='radio' name='l_id' value='".$_GET['l_id']."' style='display: none' checked>
	<input type='radio' name='g_id' value='".$_GET['g_id']."' style='display: none' checked>";?>
	<p><button>Confirm booking</button></p>
</form>
<script type="text/javascript" src="../assets/ajax.min.js"></script>
</body>
</html>