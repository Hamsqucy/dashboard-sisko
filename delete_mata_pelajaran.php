<?php
include("koneksi.php");

$sql="DELETE FROM mmatpel WHERE id_matpel='$_GET[id_matpel]'";

$query = mysqli_query($koneksi, $sql);


if ($sql) {
    header("location:data_mata_pelajaran.php?hal=data_mata_pelajaran&pesan=berhasil_hapus");
}else{
    header("location:data_mata_pelajaran.php?hal=data_mata_pelajaran&pesan=gagal_hapus");
    echo mysqli_error();
    echo "$sql";
}
?>