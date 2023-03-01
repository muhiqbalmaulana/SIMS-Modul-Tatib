<?php
include ("koneksi.php");
if($_POST['kategori']) {
$kategori = $_POST['kategori'];
$range = $_POST['range'];
$keterangan = $_POST['keterangan'];
mysql_query("INSERT INTO tatib_range(kode,nilai,keterangan) values('$kategori','$range','$keterangan')");
//echo $kategori; echo $range; echo $keterangan;
}
?>