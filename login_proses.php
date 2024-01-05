<?php
session_start();
include 'koneksi.php';

// Menangkap data yang dikirim dari Form Login
$username = $_POST['username'];
$password = $_POST['password'];
 
// Menyeleksi data pada tabel Admin dengan Username dan Password
$data = mysqli_query($koneksi, "SELECT * FROM login_user WHERE username='$username' AND password='$password'");

// Menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($data);
 
if ($cek > 0) {
    $_SESSION['username'] = $username;
    $_SESSION['status'] = "login";
    header("location:home.php");
} else {
    header("location:index.php?pesan=gagal");
}