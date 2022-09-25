<?php
	session_start();
	if(isset($_SESSION['username'])){
		include '../koneksi.php';
	}else{
	   header("location:index.php");
	}
?>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
   <h2>Manajemen Admin</h2>
      <hr>
      <center><input type="button" value="Tambah Data" onclick="location.href='tambahadmin.php'"></center>
      <br>
		<table border='1' cellspacing="0" cellpadding='5'>
		<tr>
			<td>No</td>
			<td>Username</td>
		    <td>Password</td>						
	    	<td>Aksi</td>
		</tr>
		<?php
			$no=1;
			$sql="SELECT * FROM admin";
			$query= mysqli_query($db_link,$sql);
			while($data = mysqli_fetch_array($query))
				{
				?>
				<tr>
					<td><?php echo "$no"; ?></td>
					<td><?php echo "$data[username]"; ?></td>
					<td><?php echo "$data[password]"; ?></td>			
					<td>
						<a href="editadmin.php?id=<?php echo "$data[id]"; ?>">EDIT</a> |
						<a href="hapusadmin.php?id=<?php echo "$data[id]"; ?>" onclick="return confirm('Anda yakin?')">HAPUS</a>
					</td>
				</tr>
				<?php
				$no++;
				}
		?>
		</table>
</body>
</html>