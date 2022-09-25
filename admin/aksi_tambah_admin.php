<?php
	include "../koneksi.php";
	$username=$_POST['username'];
	$password=$_POST['password'];
	$sql = "insert into admin(username,password) values('$username','$password')";
	$query  =mysqli_query($db_link,$sql);
	if($query)
	{
		header('location:bacaadmin.php');
	}
	else
	{
	echo"Gagal Disimpan";
	}
?>