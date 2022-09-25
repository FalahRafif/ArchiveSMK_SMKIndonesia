<?php
	include "../koneksi.php";
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
		echo 'guru belum terdaftar di tabel mengajar <a href="tambahnilai.php">Back</a>';
		exit;
	}
	
	$sql = "INSERT INTO nilai(nis,kdnilai,kdguru,kdjurusan,kdkelas,kdmapel,uh,uts,uas,na) VALUES('$nis','$kdnilai','$kdguru','$kdjurusan','$kdkelas','$kdmapel','$uh','$uts','$uas','$na')";
	$query  =mysqli_query($db_link,$sql);
	if($query)
	{
		header('location:bacanilai.php');
	}
	else
	{
	echo"Gagal Disimpan";
	echo mysqli_error($db_link);
	}
?>