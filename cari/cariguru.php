<?php
    
?>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
            <h2>Pencarian Data Guru</h2>
               <form method="post" action="target_cariguru.php">
                <table border="0">
                    <tr>
                        <td>Masukan Keyword</td>
                        <td> : </td>
                        <td> <input name="cari" type="text"> </td>
                    </tr>
                    <tr>
                        <td>Cari Berdasarkan</td>
                        <td> : </td>
                        <td><select name="pilihan">
                          <option value="nip">KODEGURU</option>
                          <option value="namaguru">Nama Guru</option>
                        </select></td>
                  </tr>
                    <tr> 
                        <td> <input type="submit" value="Search"> </td>
                    </tr>
                </table>
</form>
</body>
</html>