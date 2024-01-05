<?php

if (isset($_POST['submit'])) {

    $id_pembayaran = ($_POST['id_pembayaran']); 
    $nis = ($_POST['nis']);
    $id_kelas = ($_POST['id_kelas']);
    $id_tahun_ajaran = ($_POST['id_tahun_ajaran']);
    $id_semester = ($_POST['id_semester']);
    $id_jenis_pembayaran = ($_POST['id_jenis_pembayaran']);
    $no_virtual_account = ($_POST['no_virtual_account']);
    $nilai_pebayaran = ($_POST['nilai_pebayaran']);
    $keterangan = ($_POST['keterangan']);
    $id_kasir = ($_POST['id_kasir']);
  
    include "koneksi.php";

    //Query UPDATE
    $sql = "UPDATE tpembayaran SET nis='$nis', id_kelas='$id_kelas', id_tahun_ajaran='$id_tahun_ajaran', id_semester='$id_semester', 
            id_jenis_pembayaran='$id_jenis_pembayaran', no_virtual_account='$no_virtual_account', nilai_pebayaran='$nilai_pebayaran',
            keterangan='$keterangan', id_kasir='$id_kasir' WHERE id_pembayaran='$id_pembayaran'";

    $result = mysqli_query($koneksi, $sql);

}
if ($sql) {
    header("location:data_pembayaran.php?hal=data_pembayaran&pesan=berhasil_edit");
}else{
    header("location:data_pembayaran.php?hal=data_pembayaran&pesan=gagal_edit");
    echo mysqli_error();
    echo "$sql";

  }

?>
