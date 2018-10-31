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
			<a href="index.php" class="navbar-brand">GameBytes</a>
		</div>
	</div>
</nav>
<div class="content-container">
<div class="content">
	<h2>Your Details</h2>
	<form method="POST" id="registration-form" action="registered.php">
	<table>
		<tbody>
			<tr>
				<td>Password: </td>
				<td><input id="fname-input" type="text" name="m_password" required></td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><input id="fname-input" type="text" name="m_fname" required></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input id="lname-input" type="text" name="m_lname" required></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
				<td><input id="ph-no-input" type="number" name="m_phno" required></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input id="address-input" type="text" name="m_address" required></td>
			</tr>
		</tbody>
	</table>
	<button id="register-submit">Submit</button>
	</form>
</div>
</div>
<script type="text/javascript" src="../assets/ajax.min.js"></script>
<script type="text/javascript" src="../assets/js/edit.js"></script>
</body>
</html>