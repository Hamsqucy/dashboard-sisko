<?php

include("koneksi.php");

$sql="DELETE FROM mkelas WHERE id_kelas='$_GET[id_kelas]'";

$query = mysqli_query($koneksi, $sql);


if ($sql) {
    header("location:data_kelas.php?hal=data_kelas&pesan=berhasil_hapus");
}else{
    header("location:data_kelas.php?hal=data_kelas&pesan=gagal_hapus");
    echo mysqli_error();
    echo "$sql";
}
?>