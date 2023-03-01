<?php
session_start();
$username = $_POST['username'];
$password = $_POST['password'];
include ("koneksi.php");
//mencari password berdasar username
$query = "SELECT * FROM guru WHERE nip='$username' AND password='$password'";
$hasil = mysql_query($query)or die("Error");
$data = mysql_fetch_array($hasil);

if($data['password']&&$data['nip'])
{
	//jikasesuai maka buat session untuk username
	$_SESSION['username'] = $username;
	header('location:halaman.php');
	
}
else header('location:index.php');
?>