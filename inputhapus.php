<?php
include ("koneksi.php");
if($_POST['nis']) {
$nis = $_POST['nis'];
$id = $_POST['id'];
$qu=mysql_query("DELETE FROM tatib where nis='$nis' AND id='$id'");

//echo $nis;
}
?>