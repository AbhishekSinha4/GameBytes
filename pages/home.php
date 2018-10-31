<?php
	if(!IsSet($_SESSION)){
		session_start();
	}
	if(IsSet($_SESSION["m_id"])){
	}
	else if(IsSet($_SESSION["guest_id"])){
	}
	else{if($_SERVER["REQUEST_METHOD"]!="POST")header("location: index.php");}
?>
<?php
if($_SERVER["REQUEST_METHOD"]=="POST"){
	$db='gamebytes';
	$conn=mysqli_connect('localhost','abhishek','abhishek98');
	mysqli_select_db($conn,$db);
	$query="select * from member where m_id='".strToUpper($_POST["memid"])."';";
	$result=mysqli_query($conn,$query);
	if($result->num_rows==0)header("location: index.php");
	else{
		 $row=mysqli_fetch_assoc($result);
		if(strcmp($row["m_password"],$_POST["password"])!==0)header("location: index.php");
		else{
			$_SESSION["m_id"]=$row["m_id"];
			$_SESSION["m_fname"]=$row["m_fname"];
			$_SESSION["m_password"]=$row["m_password"];
		}
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="../assets/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/home.css">
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
				<li><a href="edit.php">Edit</a></li>
				<li><a href="logout.php">Log Out</a></li>
			</ul>
		</div>
	</div>
</nav>
<div class="container">
	<div class="category">
		<h2>New Releases</h2>
		<div class="content">
		<?php
			{
				$db='gamebytes';
				$conn=mysqli_connect('localhost','abhishek','abhishek98');
				mysqli_select_db($conn,$db);
				$query="select * from game order by g_release desc limit 5";
				$result=mysqli_query($conn,$query);
				for($i=0;$i<$result->num_rows;$i++){
					$row=mysqli_fetch_assoc($result);
					echo
					"	<form action='gamedetails.php' method='GET'>
							<input type='radio' name='g_id' value='".$row['g_id']."' style='display: none' checked>
							<button class='more home-more'>
							<div class='content-box'>
							<p>".$row['g_name']."</p>
							</div>
							</button>
						</form>
					";
				}

			}
		?>
	
		</div>	
	</div>

	<div class="category">
		<h2>Top Rated Games</h2>
		<div class="content">
		<?php
			{
				$db='gamebytes';
				$conn=mysqli_connect('localhost','abhishek','abhishek98');
				mysqli_select_db($conn,$db);
				$query="select g_id,g_name, avg(g_r_stars) as rating from game_reviews natural join game group by g_id order by rating desc limit 5;";
				$result=mysqli_query($conn,$query);
				for($i=0;$i<$result->num_rows;$i++){
					$row=mysqli_fetch_assoc($result);
					echo
					"	<form action='gamedetails.php' method='GET'>
							<input type='radio' name='g_id' value='".$row['g_id']."' style='display: none' checked>
							<button class='more home-more'>
							<div class='content-box'>
							<p>".$row['g_name']." (".$row['rating'].")</p>
							</div>
							</button>
						</form>
					";
				}

			}
		?>
		</div>	
	</div>

	<div class="category">
		<h2>Top Rated Game Centres</h2>
		<div class="content">
		<?php
			{
				$db='gamebytes';
				$conn=mysqli_connect('localhost','abhishek','abhishek98');
				mysqli_select_db($conn,$db);
				$query="select l_id,l_name, avg(l_r_stars) as rating from location_reviews natural join location group by l_id order by rating desc limit 5;";
				$result=mysqli_query($conn,$query);
				for($i=0;$i<$result->num_rows;$i++){
					$row=mysqli_fetch_assoc($result);
					echo
					"	<form action='centredetails.php' method='GET'>
							<input type='radio' name='l_id' value='".$row['l_id']."' style='display: none' checked>
							<button class='more home-more'>
							<div class='content-box'>
							<p>".$row['l_name']." (".$row['rating'].")</p>
							</div>
							</button>
						</form>
					";
				}

			}
		?>
		</div>	
	</div>

	<div class="category">
		<h2>Top Game in Each Genre</h2>
		<div class="content">
		<?php
			{
				$db='gamebytes';
				$conn=mysqli_connect('localhost','abhishek','abhishek98');
				mysqli_select_db($conn,$db);
				$query="select g_id, g_name ,genre_name, max(g_r_stars) from game natural join ((game_genre natural join game_reviews) natural join genre) group by genre_id;";
				$result=mysqli_query($conn,$query);
				for($i=0;$i<$result->num_rows;$i++){
					$row=mysqli_fetch_assoc($result);
					echo
					"	<form action='gamedetails.php' method='GET'>
							<input type='radio' name='g_id' value='".$row['g_id']."' style='display: none' checked>
							<button class='more home-more'>
							<div class='content-box'>
							<p><strong>".$row['genre_name']."</strong>: ".$row['g_name']."</p>
							</div>
							</button>
						</form>
					";
				}

			}
		?>
		</div>	
	</div>

	<div class="category">
		<h2>Recents</h2>
		<div class="content">
		<?php
			{
				$db='gamebytes';
				$conn=mysqli_connect('localhost','abhishek','abhishek98');
				mysqli_select_db($conn,$db);
				$query="select * from game natural join bookings where id='".$_SESSION["m_id"]."' order by book_date desc limit 5";
				$result=mysqli_query($conn,$query);
				for($i=0;$i<$result->num_rows;$i++){
					$row=mysqli_fetch_assoc($result);
					echo
					"	<form action='gamedetails.php' method='GET'>
							<input type='radio' name='g_id' value='".$row['g_id']."' style='display: none' checked>
							<button class='more home-more'>
							<div class='content-box'>
							<p>".$row['g_name']."</p>
							</div>
							</button>
						</form>
						

					";
				}
				if(!$result->num_rows) echo "<h3>No bookings made</h3>";
			}
		?>
		</div>	
	</div>

</div>
<script type="text/javascript" src="../assets/ajax.min.js"></script>
</body>
</html>