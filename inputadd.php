<?php
include ("koneksi.php");
include ("setTahunSemester.php");
include ("session.php");
if($_POST['nis']) {
$tanggal = $_POST['tanggal'];
$nis = $_POST['nis'];
$jujur = $_POST['jujur'];
$disiplin = $_POST['disiplin'];
$santun = $_POST['santun'];
$peduli = $_POST['peduli'];
$t_jawab = $_POST['t_jawab'];
$p_diri = $_POST['p_diri'];
$keterangan = $_POST['keterangan'];
$smt = $_SESSION['smt'];
$satu=mysql_query("SELECT * from kelas_siswa where nis='$nis'");
$array1=mysql_fetch_array($satu);
if($smt='1' && $array1[tahun_ajaran]='1')
{ $sem='1'; }
elseif($smt='0' && $array1[tahun_ajaran]='1')
{ $sem='2'; }
/*$cek_nis=mysql_num_rows(mysql_query("SELECT * FROM tatib WHERE nis='$nis'"));
if ($cek_nis > 0) {
	
	}
else { */
mysql_query("INSERT INTO tatib(tanggal,nis,id_kelas,nip,jujur,disiplin,santun,peduli,t_jawab,percaya_diri,keterangan,semester,tahun_ajaran) values('$tanggal','$nis','$array1[kelas]','$user_check','$jujur','$disiplin','$santun','$peduli','$t_jawab','$p_diri','$keterangan','$sem','$array1[tahun_ajaran]')"); //}

//echo $tanggal; echo $nis; echo $array1[kelas]; echo $jujur; echo $disiplin; echo $santun; echo $peduli; echo $t_jawab; echo $p_diri; echo $keterangan; echo $sem; echo $array1[tahun_ajaran];
}
?>