<?php

if (isset($_POST['submit'])) {

    $id_kelas = ($_POST['id_kelas']); 
    $nama_kelas = ($_POST['nama_kelas']);
    $id_guru = ($_POST['id_guru']);
    $nis = ($_POST['nis']);
    $id_tahun_ajaran = ($_POST['id_tahun_ajaran']);
  
    include "koneksi.php";

    //Query UPDATE
    $sql = "UPDATE mkelas SET nama_kelas='$nama_kelas', id_guru='$id_guru', nis='$nis', id_tahun_ajaran='$id_tahun_ajaran' 
              WHERE id_kelas='$id_kelas'";

    $result = mysqli_query($koneksi, $sql);

}
if ($sql) {
    header("location:data_kelas.php?hal=data_kelas&pesan=berhasil_hapus");
}else{
    header("location:data_kelas.php?hal=data_kelas&pesan=gagal_hapus");
    echo mysqli_error();
    echo "$sql";

  }

?>
