<?php

include("koneksi.php");

$sql="DELETE FROM msiswa WHERE nis='$_GET[nis]'";

$query = mysqli_query($koneksi, $sql);


if ($sql) {
    header("location:data_siswa.php?hal=data_siswa&pesan=berhasil_hapus");
}else{
    header("location:data_siswa.php?hal=data_siswa&pesan=gagal_hapus");
    echo mysqli_error();
    echo "$sql";
}
?>