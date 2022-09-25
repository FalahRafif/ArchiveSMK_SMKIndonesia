<?php
	include '../koneksi.php';
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
	<h2>Hasil Pencarian</h2>
			<?php
				$cari = $_POST['cari'];
				$pilihan = $_POST['pilihan'];
				if (empty($cari)) {
					echo "Maaf, Masukkan Keyword Dulu.";
				}
				else {
					$sql = "SELECT * FROM siswa WHERE $pilihan LIKE '%$cari%'";
					$query = mysqli_query($db_link,$sql);
					$hitung = mysqli_num_rows($query);
					//Jumlah data yang ditampilkan per page
					$limit = 5;
					if ($hitung == 0){
						echo "<br>Tidak Ada Data";
					}
					else {
				?>
					<table border=1 cellpadding="5" cellspacing="0">
						<tr align="center">
				        	<th> No </th>		
							<th> NIS </th>
							<th> Nama Siswa </th>
				            <th> Jenis Kelamin </th>
				            <th> Alamat </th>
						</tr>
				<?php
				echo "Hasil Pencarian $pilihan dengan keyword ' $cari ' Sebanyak : $hitung data";
				$k = 1;
				while ($data = mysqli_fetch_array($query)) {
				?>
					<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
				<?php

				echo " 

				    	<td> $k </td>
				    	<td> $data[nis]</td>
				    	<td> $data[namasiswa]</td>
						<td> $data[jk]</td>
						<td> $data[alamat]</td>
						
								
					</tr>
					";	
				$k++;
				}
				echo "</table>";
					}
				}
				echo "</font>";
				?>
				<br>

				<table>
					<tr> 
				    	<td><a href="carisiswa.php">Back</a> </span></td>
				  	</tr>
				</table>
</body>
</html>