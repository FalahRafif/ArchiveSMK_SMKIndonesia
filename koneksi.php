<?php
	
	$host ="localhost";
	$user_name ="root";
	$password ="";
	$database_name ="smkindonesia";
	$port ="8080";
	$db_link =mysqli_connect($host,$user_name,$password,$database_name,$port);
	if(!$db_link) {
		echo"Gagal Terhubung ke Server";
		}
?>
