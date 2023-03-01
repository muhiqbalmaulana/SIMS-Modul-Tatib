<?php
session_start ();
//session_destroy();

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SIMS | Modul Tatib</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    });
  });
</script>
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome/fontawesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="plugins/ionicons-2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<?php 
include("koneksi.php"); 
include("session.php");
require_once 'models/tahun_ajaran.php';

$listTahun = TahunAjaran::getAllData(); 
if (isset ($_SESSION[tahun_ajaran])){
$end = end($listTahun);
    $_SESSION[tahun_ajaran] = $end[id]; }
?>
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>SI</b>MS</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>SI</b>MS</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs"><? echo $login_session; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  <? echo $login_session; ?>
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div>
                  <a href="logout.php" class="btn btn-danger col-md-12">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><? echo $login_session; ?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="treeview">
          <a id="home">
            <i class="fa fa-home"></i> <span>Dashboard</span>
          </a>
        </li>
      </ul>
      <ul class="sidebar-menu">
        <li class="header">Tahun Ajaran</li>
        <li>
            <div>     
                  <select class="form-control" name="cmbTahun" id="cmbTahun">
                  <option selected="selected">Tahun</option>
                    <?php         
                if (is_array($listTahun))
                foreach ($listTahun as $item){
                    $selected = ($item[id] == $_SESSION[tahun_ajaran]) ? 'selected="selected"':'' ;
                    echo "<option value='$item[id]' $selected>$item[tahun]</option>";
                }
                ?>
          
                  </select>
            </div>
        </li>
      </ul>
      <ul class="sidebar-menu">
        <li class="header">Semester</li>
        <li>
            <div>
                <select class="form-control" name="cmbSemester" id="cmbSemester">
          
          <option value="1" <?=($_SESSION['smt']) ? 'selected="1"' : '';?>>  Ganjil   </option>
          <option value="0" <?=(!$_SESSION['smt']) ? 'selected="1"' : '';?>>  Genap   </option>
        </select>
            </div>
        </li>
      </ul>
      <ul class="sidebar-menu">
        <li class="treeview">
          <a data-toggle="modal" data-target="#Tambah">
          <!--<a id="input">-->
            <i class="fa fa-plus-square"></i> <span>Input Tata Tertib</span>
          </a>
        </li>
        <li class="treeview">
          <a data-toggle="modal" data-target="#kelas1">
          <!--<a id="kelas">-->
            <i class="fa fa-users"></i> <span>Report Per-Kelas</span>
          </a>
        </li>
        <li class="treeview">
          <!--<a id="siswa">-->
          <a data-toggle="modal" data-target="#siswa">
            <i class="fa fa-user"></i> <span>Report Per-Siswa</span>
          </a>
        </li>
        <li class="treeview">
          <a data-toggle="modal" data-target="#nilai">
          <!--<a id="nilai">-->
            <i class="fa fa-pie-chart"></i> <span>Nilai Poin Pelanggaran</span>
          </a>
        </li>
        <?php
        $setting=mysql_query("SELECT * from guru where nip='$user_check'");
        $set=mysql_fetch_array($setting);
        if($set['kurikulum']=='y') {
        echo "
        <li class='treeview'>
          <a id='setting'>
            <i class='fa fa-gears'></i> <span>Setting Poin</span>
          </a>
        </li>"; }
        ?>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->

  
  <div class="content-wrapper" id="halamannya"></div>
  
      <div class="modal fade" id="Tambah" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-plus-square" style="margin-right:10px;"></i>Input Tata tertib</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm1" name="myForm1" method="POST">
                  <?php include("modalbody.php");?>
                  <button type="submit" class="btn btn-success" id="submitmdl">Submit</button>
                </form>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-danger pull-left" id="cancel" data-dismiss="modal" style="padding:10px;">Batal</button>
              <div id="alert" class="pull-right"></div>
            </div>            
          </div>
        </div>
      </div>
      <div class="modal fade" id="kelas1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-users" style="margin-right:10px;"></i>Report Per-Kelas</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm2" name="myForm2" method="POST">
                  <?php include("modalbody.php");?>
                  <button type="submit" class="btn btn-success" id="submitmdl">Submit</button>
                </form>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-danger pull-left" id="cancel" data-dismiss="modal" style="padding:10px;">Batal</button>
              <div id="alert1" class="pull-right"></div>
            </div>            
          </div>
        </div>
      </div>
      <div class="modal fade" id="siswa" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-user" style="margin-right:10px;"></i>Report Per-Siswa</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm3" method="POST">
                  <div class="col-xs-5">
                    <select class="form-control kelasi" id="kelas" name="kelas">
                      <option selected="selected">Kelas</option> 
                      <?php
                        $tahun=$_SESSION['tahun_ajaran'];
                        $sqa=mysql_query("SELECT id,tahun_ajaran FROM jurusan a WHERE a.tahun_ajaran='$tahun'");
                        while($data3=mysql_fetch_assoc($sqa)){
                        $sql=mysql_query("SELECT * FROM kelas b WHERE b.jurusan='$data3[id]'"); 
                        while($data2=mysql_fetch_array($sql))
                         {
                          echo '<option value="'.$data2['id'].'">'.$data2['nama'].'</option>';
                         }
                       }
                      ?>
                    </select>
                  </div>
                  <div class="col-xs-5">
                    <select class="form-control siswa" id="siswa" name="siswa">
                      <option>Nama Siswa</option>
                    </select>
                  </div>
                   <button type="submit" class="btn btn-success" id="submitmdl">Submit</button>
                </form>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-danger pull-left" id="cancel" data-dismiss="modal" style="padding:10px;">Batal</button>
              <div id="alert4" class="pull-right"></div>
            </div>            
          </div>
        </div>
      </div>
      <div class="modal fade" id="nilai" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-pie-chart" style="margin-right:10px;"></i>Nilai Poin Pelanggaran</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm4" name="myForm4" method="POST">
                  <?php include("modalbody.php");?>
                  <button type="submit" class="btn btn-success" id="submitmdl">Submit</button>
                </form>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-danger pull-left" id="cancel" data-dismiss="modal" style="padding:10px;">Batal</button>
              <div id="alert3" class="pull-right"></div>
            </div>            
          </div>
        </div>
      </div>
      <div class="modal fade" id="insert" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-plus" style="margin-right:10px;"></i>Tambah Data</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm8" name="myForm8" method="POST">
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Kategori</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-navicon"></i>
                      </div>
                      <select class="form-control" name="kategori">
                        <option value="Jujur">Jujur</option>
                        <option value="Disiplin">Disiplin</option>
                        <option value="Santun">Santun</option>
                        <option value="Peduli">Peduli</option>
                        <option value="Tanggung Jawab">Tanggung Jawab</option>
                        <option value="Percaya Diri">Percaya Diri</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Range Nilai</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-bar-chart"></i>
                      </div>
                      <input type="number" class="form-control" name="range" id="inputEmail3">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Keterangan</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-sticky-note"></i>
                      </div>
                      <textarea class="form-control" rows="3" name="keterangan" placeholder="Enter ..."></textarea>
                    </div>
                  </div>
                  <button type="submit" class="btn btn-primary col-md-12" id="submitmdl"><b>Submit</b></button>
                </form>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-danger pull-left" id="cancel" data-dismiss="modal" style="padding:10px;">Batal</button>
              <div id="alert5" class="pull-right"></div>
            </div>            
          </div>
        </div>
      </div>
      <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-pencil" style="margin-right:10px;"></i>Update</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm5" name="myForm5" method="POST">
                  
                </form>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-danger pull-left" id="cancel" data-dismiss="modal" style="padding:10px;">Batal</button>
              <div id="alert5" class="pull-right"></div>
            </div>            
          </div>
        </div>
      </div>
      <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-plus" style="margin-right:10px;"></i>Tambah Data</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm9" name="myForm9" method="POST">
                  
                </form>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-danger pull-left" id="cancel" data-dismiss="modal" style="padding:10px;">Batal</button>
              <div id="alert9" class="pull-right"></div>
            </div>            
          </div>
        </div>
      </div>
      <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-pencil" style="margin-right:10px;"></i>Update</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm10" name="myForm10" method="POST">
                  
                </form>
              </div>
            </div>
            <div class="modal-footer">
              
              <div id="alert10" class="pull-right"></div>
            </div>            
          </div>
        </div>
      </div>
      <div class="modal fade col-md-30" id="hapus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-trash" style="margin-right:10px;"></i>Hapus</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm11" name="myForm11" method="POST">
                  
                </form>
              </div>
            </div>
            <div class="modal-footer">

            </div>            
          </div>
        </div>
      </div>
      <div class="modal fade col-md-30" id="lihat" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="glyphicon glyphicon-eye-open" style="margin-right:10px;"></i>Detail</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm12" name="myForm12" method="POST">
                  
                </form>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-danger pull-left" id="cancel" data-dismiss="modal" style="padding:10px;">Tutup</button>
              <div id="alert12" class="pull-right"></div>
            </div>            
          </div>
        </div>
      </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
  <?php
echo $_SESSION['tahun_ajaran'];echo"#"; echo $_SESSION['smt'];
?>
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.8
    </div>
    <strong>Copyright &copy; 2017 Girisa Teknologi</a>.</strong> All rights
    reserved.
  </footer>
</div>
<!-- ./wrapper -->


<!-- load menu -->
<script src="script_loadmenu.js"></script>

<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>

<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    });
  });
</script>
</body>
</html>
