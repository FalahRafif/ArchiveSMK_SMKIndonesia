<?php
	include "../koneksi.php";
	$id = $_GET['id'];
	$username=$_POST['username'];
	$password=$_POST['password'];
	
	$sql2 = "UPDATE admin SET username = '$username', password = '$password' WHERE id = '$id'";
	$query = mysqli_query($db_link,$sql2);
	if($query)
	{
	header('location:bacaadmin.php');
	}
	else
	{
	echo "Edit admin gagal";
	}
?>