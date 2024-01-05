<?php

if (isset($_POST['submit'])) {

    $nis = ($_POST['nis']); 
    $nama_siswa = ($_POST['nama_siswa']);
    $jenis_kelamin = ($_POST['jenis_kelamin']);
    $tempat_lahir = ($_POST['tempat_lahir']);
    $tgl_lahir = ($_POST['tgl_lahir']);
    $alamat = ($_POST['alamat']);
    $no_hp = ($_POST['no_hp']);
    $foto = ($_POST['foto']);
    $id_kelas = ($_POST['id_kelas']);
    $asal_sekolah = ($_POST['asal_sekolah']);
    $nama_ortu = ($_POST['nama_ortu']);
    $pekerjaan_ortu = ($_POST['pekerjaan_ortu']);
  
    include "koneksi.php";

    //Query UPDATE
    $sql = "UPDATE msiswa SET nama_siswa='$nama_siswa', jenis_kelamin='$jenis_kelamin', tempat_lahir='$tempat_lahir', tgl_lahir='$tgl_lahir', 
            alamat='$alamat', no_hp='$no_hp', foto='$foto', id_kelas='$id_kelas', asal_sekolah='$asal_sekolah', nama_ortu='$nama_ortu', 
            pekerjaan_ortu='$pekerjaan_ortu' WHERE nis='$nis'";

    $result = mysqli_query($koneksi, $sql);

}
if ($sql) {
    header("location:data_siswa.php?hal=data_siswa&pesan=berhasil_edit");
}else{
    header("location:data_siswa.php?hal=data_siswa&pesan=gagal_edit");
    echo mysqli_error();
    echo "$sql";

  }

?>
