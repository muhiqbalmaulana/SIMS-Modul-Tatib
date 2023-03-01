<?php
include('koneksi.php');
if($_POST['id'])
{
 $id=$_POST['id'];

$sql=mysql_query("SELECT * from kelas_siswa c, siswa d where c.kelas='$id' and d.nis=c.nis");
echo '<option selected="selected">Nama Siswa</option>';
 		while($data3=mysql_fetch_array($sql))
 		{
  		echo '<option value="'.$data3['nis'].'">'.$data3['nis']." - ".$data3['nama'].'</option>';
 		}
}
?>