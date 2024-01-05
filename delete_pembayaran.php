<?php

include("koneksi.php");

$sql="DELETE FROM tpembayaran WHERE id_pembayaran='$_GET[id_pembayaran]'";

$query = mysqli_query($koneksi, $sql);


if ($sql) {
    header("location:data_pembayaran.php?hal=data_pembayaran&pesan=berhasil_hapus");
}else{
    header("location:data_pembayaran.php?hal=data_pembayaran&pesan=gagal_hapus");
    echo mysqli_error();
    echo "$sql";
}
?>