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
<?php
if($_SERVER["REQUEST_METHOD"]=="GET"){
	$search=$_GET["search"];
	$by=$_GET["by"];
}
else{
	header("location: home.php");
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="../assets/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/home.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/results.css">
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
<h1>Results for <?php echo "'".$search."' in '".$by."'";?></h1>
<?php 
	if(preg_match("/'/",$search)){
		echo "No Search Results";
	}
	else{
		$db='gamebytes';
		$conn=mysqli_connect('localhost','abhishek','abhishek98');
		mysqli_select_db($conn,$db);
		if($by=="Game"){			
			$query="select * from game where g_name LIKE '%".$search."%';";
			$extra="Game Id: ";
			$field="g_id";			
		}
		else if($by=="Console"){
			$query="select * from game natural join game_console natural join console where c_name LIKE '%".$search."%' or c_id LIKE '%".$search."%' order by c_id desc;";
			$extra="Console: ";
			$field="c_name";			
		}
		else if($by=="Genre"){
			$query="select * from game natural join game_genre natural join genre where genre_name LIKE '%".$search."%';";
			$extra="Genre: ";
			$field="genre_name";			
		}
		else if($by=="Centre"){
			$query="select * from game natural join game_location natural join location where l_name LIKE '%".$search."%';";
			$extra="Location: ";
			$field="l_name";			
		}
		else if($by=="Area"){
			$query="select * from game natural join game_location natural join location where l_address LIKE '% ".$search."' order by l_name;";
			$extra="Location: ";
			$field="l_name";			
		}
		$result=mysqli_query($conn,$query);
		for($i=0;$i<$result->num_rows;$i++){
			$row=mysqli_fetch_assoc($result);
			echo
			"
				<hr />
				<div class='eachgame'>
					<div class='content-box'>
						<p>".$row['g_name']."   "."</p>
					</div>
					<div class='details'>
						<p>Publisher: ".$row['g_publisher']."</p>
						<p>Price: ".$row['g_price']." /-</p>
						<p>Age Requirement: ".$row['r_id']."+</p>
						<p>".$extra.$row[$field]."</p>
						<form action='gamedetails.php' method='GET'>
							<input type='radio' name='g_id' value='".$row['g_id']."' style='display: none' checked>
							<button class='more'>More ></button>
						</form>
					</div>
					<div class='clearing'></>
				</div>
			";
		}
		if(!$result->num_rows){
			echo "<h4>No Results Found</h4>";
		}
	}
?>
</div>
<script type="text/javascript" src="../assets/ajax.min.js"></script>
</body>
</html>