<?php
	session_start();
	include "koneksi.php";	
	$username = $_POST["username"];
	$password = $_POST["password"];	
	$sql="SELECT * FROM admin where username = '$username' and password = '$password'";	
	$query = mysqli_query($db_link,$sql);		
	if(mysqli_num_rows($query)!=0)
	{
		echo "<br>Login sukses";
			$data = mysqli_fetch_array($query);
			$_SESSION['username'] = $data['username']; 
			$_SESSION['password'] = $data['password'];
			$_SESSION['LOGIN'] = "LOGIN";			
			header("location:haladmin.php");
	}
	else
	{
		 echo "<br>Login gagal ";
		 echo "<a href=index.php>Kembali</a>";
	}
?>