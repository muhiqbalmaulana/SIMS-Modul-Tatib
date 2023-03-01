<?php
include ("koneksi.php");
if($_POST['id']) {
$id = $_POST['id'];
$kode = $_POST['kode'];
$nilai = $_POST['nilai'];
$keterangan = $_POST['keterangan'];
$qu=mysql_query("UPDATE tatib_range set kode='$kode',nilai='$nilai',Keterangan='$keterangan' where id='$id'");

//echo $tanggal; echo $nis; echo $jujur; echo $disiplin; echo $santun; echo $peduli; echo $t_jawab; echo $p_diri; echo $keterangan;
}
?>