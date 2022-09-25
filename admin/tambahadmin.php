<?php
	include '../koneksi.php';
?>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
   <h2>Tambah - Manajemen Admin</h2>
      <hr>
      <form action='aksi_tambah_admin.php' method='POST'>
	<table border="0">
	  <td>Username</td>
	  <td><input type='text' name='username' id="username"></td>
	  </tr>
	<tr>
	  <td>Password</td>
	  <td><input type='text' name='password' id="password"></td>
	  </tr>
	<tr>
		<td></td>
		<td >
	  <input type='submit' value='simpan'>
	  </td></tr>
	</table>
</form>
</body>
</html>