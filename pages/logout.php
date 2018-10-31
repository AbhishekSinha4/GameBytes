<?php
	if(!$_SESSION)session_start();
	if($_SERVER["REQUEST_METHOD"]=="POST"){
		$db='gamebytes';
		$conn=mysqli_connect('localhost','abhishek','abhishek98');
		mysqli_select_db($conn,$db);
		$query="delete from member where m_id='".$_SESSION["m_id"]."';";
		$result=mysqli_query($conn,$query);
		$row=mysqli_fetch_assoc($result);
	}
	if(IsSet($_SESSION["m_id"])){
		$_SESSION=Array();
		session_destroy();
	}
	else if(IsSet($_SESSION["g_id"])){
		$_SESSION=Array();
		session_destroy();
	}
	header("location: ../index.php");
?>