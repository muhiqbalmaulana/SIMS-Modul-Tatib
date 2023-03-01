<?php 
include("koneksi.php");
include("session.php");
if($_POST["kelas"]) {
  $kelas=$_POST["kelas"]; ?>
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
   <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  
  <section class="content-header">
      <h1>
        <b>Admin</b>LTE
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">         
    <div class="col-md-12">
          <!-- /.box -->
          <?php
          $sqo=mysql_query("SELECT * FROM kelas WHERE id='$kelas'");
          $data5=mysql_fetch_array($sqo);
          $sqp=mysql_query("SELECT nis from kelas_siswa where kelas='$kelas'");
          $data3=mysql_fetch_array($sqp);
          include ('setTahunSemester.php');
          $tahun=$_SESSION['tahun_ajaran'];
          $sqi=mysql_query("SELECT * FROM tahun_ajaran WHERE id='$tahun'");
          $data4=mysql_fetch_array($sqi);
          ?>
          <div class="box box-primary">
            <div class="box-header">
              <i class="fa fa-plus-square"></i><h3 class="box-title"><b>Input Tata Tertib</b></h3>
              <h4><b>Kelas : <?php echo $data5['nama']; ?> - </b><b>Semester : <?php if($_SESSION['smt']=='1') {echo "Ganjil";} else {echo "Genap";} ?> - </b><b>Tahun Ajaran : <?php echo $data4['tahun']; ?></b></h4>
              <div class="cols-xs-3" style="width:208px;">
              <a data-toggle="modal" data-target="#Tambah">
              <button type="button" class="btn btn-block btn-primary" style="width:130px;margin-top:10px;"><i class="fa fa-refresh"><span style="font-family:tahoma;">
              Kelas </span></i> </button> </a>
              <!--<a data-toggle="modal" data-target="#add">-->
              <button type="button" class="btn btn-block btn-success open_modal" id="<?php echo $kelas; ?>" style="width:130px;margin-top:10px;"><i class="fa fa-plus"><span style="font-family:tahoma;">
              Tambah Data </span></i> </button><!--</a>--></div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              
              <table id="example1" class="table table-bordered table-hover table-striped">
                <thead>
                <tr>
                  <th><center>Tanggal</center></th>
                  <th><center>Petugas</center></th>
                  <th><center>Nama Siswa</center></th>
                  <th>Jujur</th>
                    <th>Disiplin</th>
                    <th>Santun</th>
                    <th>Peduli</th>
                    <th>Tanggung Jawab</th>
                    <th>Percaya Diri</th>
                  <th><center>Keterangan</center></th>
                  <th><center>Action</center></th>
                </tr>
                </thead>
                <tbody>
                <?php
                $sqm=mysql_query("SELECT * from tatib where id_kelas='$kelas'");
                while($data11=mysql_fetch_array($sqm)){
                echo "
                <tr>
                  <td>$data11[tanggal]</td>";
                $petugas=mysql_query("SELECT * from guru where nip='$data11[nip]'");
                $ptg=mysql_fetch_array($petugas);
                echo "
                  <td>$ptg[nama]</td>";
                $nm=mysql_query("SELECT * from siswa where nis='$data11[nis]'");
                $nama=mysql_fetch_array($nm);
                echo "<td>$nama[nama]</td>";
                $jj=mysql_query("SELECT * from tatib_range where id='$data11[jujur]'");
                $jujur=mysql_fetch_array($jj);
                $ds=mysql_query("SELECT * from tatib_range where id='$data11[disiplin]'");
                $disiplin=mysql_fetch_array($ds);
                $st=mysql_query("SELECT * from tatib_range where id='$data11[santun]'");
                $santun=mysql_fetch_array($st);
                $pi=mysql_query("SELECT * from tatib_range where id='$data11[peduli]'");
                $peduli=mysql_fetch_array($pi);
                $tj=mysql_query("SELECT * from tatib_range where id='$data11[t_jawab]'");
                $tanggung=mysql_fetch_array($tj);
                $pd=mysql_query("SELECT * from tatib_range where id='$data11[percaya_diri]'");
                $percaya=mysql_fetch_array($pd);
                  echo "<td>$jujur[nilai]</td>
                  <td>$disiplin[nilai]</td>
                  <td>$santun[nilai]</td>
                  <td>$peduli[nilai]</td>
                  <td>$tanggung[nilai]</td>
                  <td>$percaya[nilai]</td>
                  <td>$data11[keterangan]</td>
                  <td>  ";
                if($user_check==$ptg['nip']){
                  echo "
                  <a href='#' class='edit_modal' id='$data11[id]'><span data-placement='top' data-toggle='tooltip' title='Update'><button class='btn btn-primary btn-xs' style='margin-left:10px;margin-right:10px;'><span class='glyphicon glyphicon-pencil'></span></button></span></a>
                  <a href='#' class='hapus_modal' id='$data11[id]'><span data-placement='top' data-toggle='tooltip' title='Hapus'><button class='btn btn-danger btn-xs' style='margin-left:10px;margin-right:10px;'><span class='glyphicon glyphicon-trash'></span></button></span></a>";
                  }
                  echo "
                  </td>
                </tr>
                ";
              }
                ?>
                </tbody>
                <tfoot>
                <tr>
                  <th><center>Tanggal</center></th>
                  <th><center>Petugas</center></th>
                  <th><center>Nama Siswa</center></th>
                  <th colspan="6"><center>Kumulatif</center></th>
                  <th><center>Keterangan</center></th>
                  <th><center>Action</center></th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
      </div>
    </div>
  </section>
     



<!-- SlimScroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- page script -->
<!-- bootstrap datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
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
<?php } ?>