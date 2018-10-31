<?php
	if(!IsSet($_SESSION)){
		session_start();
	}
	if(IsSet($_SESSION["m_id"])){
	}
	else if(IsSet($_SESSION["guest_id"])){
	}
	else{if($_SERVER["REQUEST_METHOD"]!="POST")header("location: index.php");}
	// 	$_SESSION=Array();
	// 	session_destroy();
	// }
	// var_dump($_SESSION);
?>
<?php
$db='gamebytes';
$conn=mysqli_connect('localhost','abhishek','abhishek98');
mysqli_select_db($conn,$db);
if($_SERVER["REQUEST_METHOD"]=="POST"){
	if(IsSet($_POST["temp_phno"])){
		$query="update member set m_phno='".$_POST["temp_phno"]."' where m_id='".strToUpper($_SESSION["m_id"])."';";
		$result=mysqli_query($conn,$query);

	}
	if(IsSet($_POST["temp_address"])){
		$query="update member set m_address='".$_POST["temp_address"]."' where m_id='".strToUpper($_SESSION["m_id"])."';";
		$result=mysqli_query($conn,$query);

	}

}
$query="select * from member where m_id='".strToUpper($_SESSION["m_id"])."';";
$result=mysqli_query($conn,$query);
$row=mysqli_fetch_assoc($result);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="../assets/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/home.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/edit.css">
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
<div class="content-container">
<div class="content">
	<h2>Your Details</h2>
	<table>
		<tbody>
			<tr>
				<td>ID: </td>
				<td><?php echo $row["m_id"];?></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><?php echo $row["m_fname"]." ".$row["m_lname"];?></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
				<td><span id="old_ph-no"><?php echo $row["m_phno"];?></span><form method="POST" id="ph-no" hidden><input id="ph-no-input" type="number" name="temp_phno"><button class="submit" id="submit-ph-no">Submit</button></form></td>
				<td><button class="edit" id="edit_ph-no">Edit</button></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><span id="old_address"><?php echo $row["m_address"];?></span><form method="POST" id="address" hidden><input id="address-input" type="text" name="temp_address"><button class="submit" id="submit-address">Submit</button></form></td>
				<td><button class="edit" id="edit_address">Edit</button></td>
			</tr>
		</tbody>
	</table>
	<form id="delete" action="logout.php" method="POST"><button>Delete Account</button></form>
</div>
</div>
<script type="text/javascript" src="../assets/ajax.min.js"></script>
<script type="text/javascript" src="../assets/js/edit.js"></script>
</body>
</html>