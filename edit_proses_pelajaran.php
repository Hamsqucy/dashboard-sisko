<?php

if (isset($_POST['submit'])) {

    $id_matpel = ($_POST['id_matpel']); 
    $nama_matpel = ($_POST['nama_matpel']);
    $status_pelajaran= ($_POST['status_pelajaran']);
  
    include "koneksi.php";

    //Query UPDATE
    $sql = "UPDATE mmatpel SET nama_matpel='$nama_matpel', status_pelajaran='$status_pelajaran' 
              WHERE id_matpel='$id_matpel'";

    $result = mysqli_query($koneksi, $sql);

}
if ($sql) {
    header("location:data_mata_pelajaran.php?hal=data_mata_pelajaran&pesan=berhasil_edit");
} else {
    header("location:data_mata_pelajaran.php?hal=data_mata_pelajaran&pesan=gagal_edit");
    echo mysqli_error();
    echo "$sql";
  }

?>
