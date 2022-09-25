<?php
	include "../koneksi.php";
	$id = $_GET['id'];
	$nis=$_POST['nis'];
	$kdnilai=$_POST['kdnilai'];
	$kdguru=$_POST['kdguru'];
	$kdjurusan=$_POST['kdjurusan'];
	$kdkelas=$_POST['kdkelas'];
	$kdmapel=$_POST['kdmapel'];
	$uh=$_POST['uh'];
	$uts=$_POST['uts'];
	$uas=$_POST['uas'];
	$na = ($uh+$uts+$uas)/3;
	$na = round($na,2);

	$sql_cek_1 = "SELECT * FROM mengajar WHERE kdguru='$kdguru' AND kdjurusan='$kdjurusan' AND kdkelas='$kdkelas' AND kdmapel='$kdmapel'";

	if(mysqli_num_rows(mysqli_query($db_link, $sql_cek_1)) != 1)
	{
		echo 'guru belum terdaftar di tabel mengajar <a href="bacanilai.php">Back</a>';
		exit;
	}

	$sql2 = "UPDATE nilai SET kdnilai='$kdnilai',nis='$nis', kdguru='$kdguru', kdjurusan='$kdjurusan', kdkelas = '$kdkelas', kdmapel = '$kdmapel',uh='$uh',uts='$uts',uas='$uas',na='$na' WHERE kdnilai = '$id'";
	$query = mysqli_query($db_link,$sql2);
	if($query)
	{
	header('location:bacanilai.php');
	}
	else
	{
	echo "Edit nilai gagal";
	}
?>