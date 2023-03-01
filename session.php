<?php
include ('koneksi.php');
session_start();// Memulai Session
// Menyimpan Session
$user_check=$_SESSION['username'];
// Ambil nama karyawan berdasarkan username karyawan dengan mysql_fetch_assoc
$ses_sql=mysql_query("SELECT nama from guru where nip='$user_check'");
$row = mysql_fetch_assoc($ses_sql);
$login_session =$row['nama'];
if(!isset($login_session)){

header('Location: index.php'); // Mengarahkan ke Home Page
}
?>