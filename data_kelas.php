<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/png" href="img/icon_ubj.png">
  <title>Ubhara Jaya | Kelas</title>

  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  
  <style>
    table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #F44336;
    }
    .table-title .btn {
		color: #fff;
		float: right;
		font-size: 13px;
		border: none;
		min-width: 50px;
		border-radius: 2px;
		border: none;
		outline: none !important;
		margin-left: 10px;
	}
    table {
    -collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
  } 
    th, td {
    text-align: left;
    padding: 8px;
  }
  
</style>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="img/icon_ubj.png" alt="icon_ubj" height="60" width="60">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
     
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="home.php" class="brand-link">
      <img src="img/icon_ubj.png" alt="icon_ubj" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Ubhara Jaya</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
       
        <div class="info">
          <a href="" class="d-block">    Aplikasi Ujian Online</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              
              <p>
               MENU UTAMA
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php" class="nav-link active">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                  <p>Beranda</p>
                </a>
              </li>

       <!--- Data Master --->       
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Data Master
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right"></span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="data_mata_pelajaran.php" class="nav-link">
                  <i class="fas fa-circle nav-icon"></i>
                  <p>Data Mata Pelajaran</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data_kelas.php" class="nav-link">
                  <i class="fas fa-circle nav-icon"></i>
                  <p>Data Kelas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data_siswa.php" class="nav-link">
                  <i class="fas fa-circle nav-icon"></i>
                  <p>Data Siswa</p>
                </a>
              </li>
              
            </ul>
          </li>

      <!--- Data Pembayaran --->   
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Pembayaran
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="data_pembayaran.php" class="nav-link">
                  <i class="fas fa-circle nav-icon"></i>
                  <p>Status Pembayaran</p>
                </a>
              </li>
            </ul>
          </li>

        <!--- Pengaturan --->   
          <li class="nav-item">
            <a href="home.php" class="nav-link">
              <i class="nav-icon fas fa-ellipsis-h"></i>
              <p>Pengaturan</p>
            </a>
          </li>

          <li class="nav-item">
                <a href="logout.php" class="nav-link">
                <i class="nav-icon fas fa-columns"></i>
                  <p>Log Out</p>
                </a>
              </li>
              
      </nav>
    </div>
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Universitas Bhayangkara Jakarta Raya</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Menu Utama</a></li>
              <li class="breadcrumb-item active">Beranda</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Data Kelas</h3>

                    <div class="col-xs-6">
						      </div>
            
                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                  <a href="#addDataKelas" class="btn btn-success" data-toggle="modal"> <span>Tambah Data</span></a>
                  
                    <div class="input-group-append">
                      
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              
      <!-- Table Data -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>ID Kelas</th>
                        <th>Nama Kelas</th>
                        <th>ID Guru</th>
                        <th>NIS</th>
                        <th>ID Tahun Ajaran</th>
                        <th>Created At</th>
                        <th>Update At</th>
                        <th>Aksi</th>
                    </tr>
                  </thead>
            
                  <?php 
						          include "koneksi.php";

						          $sql = mysqli_query($koneksi, "SELECT * FROM mkelas");
                      $no = 1;

						          while($data = mysqli_fetch_array($sql)) {
				          ?>

                  <tbody>
                    <tr>
                        <td><?php echo $no++;?></td>  
                        <td><?php echo $data['id_kelas'];?></td>  
                    		<td><?php echo $data['nama_kelas'];?></td>
                    		<td><?php echo $data['id_guru'];?></td>
                        <td><?php echo $data['nis'];?></td>
                        <td><?php echo $data['id_tahun_ajaran'];?></td>
							          <td><?php echo $data['created_at'];?></td>
							          <td><?php echo $data['updated_at'];?></td>

                    <td>
                      <a href="form_edit_kelas.php?id_kelas=<?php echo $data['id_kelas']?> ">
                      <button type="button" class="btn btn-warning" name=""> <i class="fa fa-pencil"></i> Edit</button></a>
                      <a onclick="return confirm('Ingin Menghapus Data ?')" href="delete_kelas.php?id_kelas=<?php echo $data['id_kelas']?>">
                     <button type="button" class="btn btn-danger" name=""> <i class=""></i>Delete</button></a>
                    </td>
					        
                    </tr>
                  </tbody>

                    <?php
              	  }
                ?>
               
              </table>
            </div>
          </div>
        </div>
      </div>
        
<!-- Tambah Data -->     
	<div id="addDataKelas" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
      
      <form action="data_kelas.php" method="post">

					<div class="modal-header">						
						<h4 class="modal-title">Tambah Data Kelas</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>

					<div class="modal-body">					
						<div class="form-group">
							<label>ID Kelas</label>
							<input type="text" class="form-control" name="id_kelas" id="id_kelas">
						</div>
						<div class="form-group">
							<label>Nama Kelas</label>
							<input type="text" class="form-control" name="nama_kelas" id="nama_kelas">
						</div>
						<div class="form-group">
							<label>ID Guru</label>
							<input type="text" class="form-control" name="id_guru" id="id_guru">
						</div>
            <div class="form-group">
							<label>NIS</label>
							<input type="text" class="form-control" name="nis" id="nis">
						</div>
            <div class="form-group">
							<label>ID Tahun Ajaran</label>
							<input type="text" class="form-control" name="id_tahun_ajaran" id="id_tahun_ajaran">
						</div>
					</div>

					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" name="submit" class="btn btn-success" value="Tambah">
					</div>

				</form>
			</div>
		</div>
	</div>

  <?php
    include "koneksi.php";

      if(isset($_POST['submit'])) {
         
        $id_kelas = ($_POST['id_kelas']); 
        $nama_kelas = ($_POST['nama_kelas']);
        $id_guru = ($_POST['id_guru']);
        $nis = ($_POST['nis']);
        $id_tahun_ajaran = ($_POST['id_tahun_ajaran']);
         
        $sql = "INSERT INTO mkelas (id_kelas, nama_kelas, id_guru, nis, id_tahun_ajaran)
        VALUES ('$id_kelas', '$nama_kelas', '$id_guru', '$nis', '$id_tahun_ajaran')";
       
        $result = mysqli_query($koneksi, $sql);
      }
    ?>
    </section>
  </div>

<!-- Footer -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2021 <a href=""></a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Ilham Alqudsi<b> | 201910225342
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
</body>
</html>