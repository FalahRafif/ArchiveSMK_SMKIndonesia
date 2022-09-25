<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Halaman Index</title>
<link rel="stylesheet" href="mystyle.css" type="text/css">
</head>
<body>

<div id="header"><img src="gambar/banner3.jpg" width="800" height="150" alt="Gambar Header"/></div>

<div id="navigation" align="center">
	<ul>
    	<li><a href="home.html" target="right">Home</a></li>
        <li><a href="siswa/tampilsiswa.php" target="right">Data Siswa</a></li>
        <li><a href="cari/carisiswa.php" target="right">Cari Siswa</a></li>
        <li><a href="guru/tampilguru.php" target="right">Data Guru</a></li>
       	<li><a href="cari/cariguru.php" target="right">Cari Guru</a></li>
        <li><a href="nilai/tampilnilai.php" target="right">Nilai Siswa </a></li>
        <li><a href="galery.html" target="right"> Galery</a></li> 
	</ul>
</div>

<div id="content">
	<div id="left">
		<div id="lefttop" align="center">
        <br>
  			<form id="login" method="post" action="ceklogin.php">
    			<label for="lname">User Name</label>
    				<input type="text" id="username" name="username" placeholder="User Name">
    			<label for="lpass">Password</label>
    				<input type="password" id="password" name="password" placeholder="Password">
    				<input type="submit" value="Submit">
  			</form>
        </div>
    	<div id="leftbottom">
        	<img src="gambar/8.jpg" width="250" height="225" alt=""/>
        </div>
	</div>
	<div id="right"><iframe frameborder="0" width="550" height="450" scrolling="auto" name="right"></iframe>
    
    </div>
</div>

<div id="footer" align="center"><br>copyright&copy;nanangsuwandi2019</div>

</body>
</html>
