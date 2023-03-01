<?php
include ("koneksi.php");
include ("setTahunSemester.php");
if($_POST['nis1']) {
$id = $_POST['id'];
$tanggal = $_POST['tanggal1'];
$nis = $_POST['nis1'];
$jujur = $_POST['jujur1'];
$disiplin = $_POST['disiplin1'];
$santun = $_POST['santun1'];
$peduli = $_POST['peduli1'];
$t_jawab = $_POST['t_jawab1'];
$p_diri = $_POST['p_diri1'];
$keterangan = $_POST['keterangan1'];
$qu=mysql_query("UPDATE tatib set tanggal='$tanggal',jujur='$jujur',disiplin='$disiplin',santun='$santun',peduli='$peduli',t_jawab='$t_jawab',percaya_diri='$p_diri',keterangan='$keterangan' where id='$id'");

//echo $tanggal; echo $nis; echo $jujur; echo $disiplin; echo $santun; echo $peduli; echo $t_jawab; echo $p_diri; echo $keterangan;
}
?>