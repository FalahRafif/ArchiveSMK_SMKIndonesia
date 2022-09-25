<?php
	include '../koneksi.php';
?>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
    <h2>Edit - Manajemen Admin</h2>
      <hr>
      <?php
			$id=$_GET['id'];
			$sql = "SELECT * FROM admin WHERE id ='$id'";
			$query = mysqli_query($db_link,$sql);
			$data = mysqli_fetch_array($query);
		?>
		<form action='aksi_edit_admin.php?id=<?php echo "$id"; ?>' method='POST'>
			<table border="0">
			<tr>
			  <td>Username</td>
			  <td><input name='username' type='text' id="username" value="<?php echo $data['username'] ?>"></td>
			  </tr>
			<tr>
			  <td>Password</td>
			  <td><input name='password' type='text' id="password" value="<?php echo $data['password'] ?>"></td>
			  </tr>
				<tr>
				<td></td>
				<td><input type='submit' value='simpan'></td>
				</tr>
			</table>
		</form>
</body>
</html>