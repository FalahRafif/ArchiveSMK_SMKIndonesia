<?php
    
?>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
            <h2>Pencarian Data Siswa</h2>
               <form method="post" action="target_carisiswa.php">
                <table border="0">
                    <tr>
                        <td>Masukan Keyword</td>
                        <td> : </td>
                        <td> <input name="cari" type="text"> </td>
                    </tr>
                    <tr>
                        <td>Cari Berdasarkan</td>
                        <td> : </td>
                        <td>
                            <select name="pilihan">
                              <option value="nis">NIS</option>
                              <option value="namasiswa">Nama Siswa</option>
                              </select>
                        </td>
                    </tr>
                    <tr> 
                        <td> <input type="submit" value="Search"> </td>
                    </tr>
                </table>
                </form>
</body>
</html>