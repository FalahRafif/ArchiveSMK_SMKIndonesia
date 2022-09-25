<?php
	include "../koneksi.php";
	
	$id = $_GET['id'];
	$sql = "DELETE FROM admin WHERE id = '$id'";
	$query = mysqli_query($db_link,$sql);
	if($query)
	{
	header('location:bacaadmin.php');
	}
	else
	{
	echo "hapus admin Gagal";
	}
?>