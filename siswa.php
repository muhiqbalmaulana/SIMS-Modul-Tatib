<?php 
include("koneksi.php");
if($_POST["siswa"]) {
  $kelas=$_POST["kelas"];
  $siswa=$_POST["siswa"] ?>
 	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
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
          <?
          $sqo=mysql_query("SELECT * FROM kelas WHERE id='$kelas'");
          $data5=mysql_fetch_array($sqo);
          $sqe=mysql_query("SELECT * FROM siswa WHERE nis='$siswa'");
          $data8=mysql_fetch_array($sqe);
          include ('setTahunSemester.php');
          $tahun=$_SESSION['tahun_ajaran'];
          $sqi=mysql_query("SELECT * FROM tahun_ajaran WHERE id='$tahun'");
          $data4=mysql_fetch_array($sqi);
          ?>
          <div class="box box-primary">
            <div class="box-header">
              <i class="fa fa-user"></i><h3 class="box-title"><b>Report Per-Siswa</b></h3>
              <h4><b>Nama : <? echo $data8['nama']; ?></b></h4>
              <h4><b>Kelas : <? echo $data5['nama']; ?> - </b><b>Semester : <? if($_SESSION['smt']=='1') {echo "Ganjil";} else {echo "Genap";} ?> - </b><b>Tahun Ajaran : <? echo $data4['tahun']; ?></b></h4>
              <div class="cols-xs-3" style="width:208px;">
              <a data-toggle="modal" data-target="#siswa">
              <button type="button" class="btn btn-block btn-primary" style="width:130px;margin-top:10px;"><i class="fa fa-refresh"><span style="font-family:tahoma;">
              Kelas & Siswa </span></i> </button> </a>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">

              <table id="example1" class="table table-bordered table-hover table-striped">
                <thead>
                <tr>
                  <th rowspan="2"><center>Tanggal</center></th>
                  <th rowspan="2"><center>Petugas</center></th>
                  <th colspan="6"><center>Pelanggaran</center></th>
                  <th colspan="6"><center>Kumulatif</center></th>
                  <th rowspan="2"><center>Keterangan</center></th>
                </tr>
                <tr align="center" style="font-size: 13px; text-align: center;">
                    <th>Jujur</th>
                    <th>Disiplin</th>
                    <th>Santun</th>
                    <th>Peduli</th>
                    <th>Tanggung Jawab</th>
                    <th>Percaya Diri</th>
                    <th>Jujur</th>
                    <th>Disiplin</th>
                    <th>Santun</th>
                    <th>Peduli</th>
                    <th>Tanggung Jawab</th>
                    <th>Percaya Diri</th>
                </tr>
                </thead>
                <tbody>
                <?
                $sqm=mysql_query("SELECT * from tatib where nis='$siswa'");

                $totaljujur=0;
                $n_jujur=0;
                $totaldisiplin=0;
                $n_disiplin=0;
                $totalsantun=0;
                $n_santun=0;
                $totalpeduli=0;
                $n_peduli=0;
                $totalt_jawab=0;
                $n_t_jawab=0;
                $totalpercaya_diri=0;
                $n_percaya_diri=0;


                while($data11=mysql_fetch_array($sqm)){
                echo "
                <tr>
                  <td>$data11[tanggal]</td>";
                $jj=mysql_query("SELECT * from tatib_range where id='$data11[jujur]'");
                $jujur=mysql_fetch_array($jj);

                // print_r($jujur);

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
                $nip=mysql_query("SELECT nama from guru where nip='$data11[nip]'");
                $petugas=mysql_fetch_array($nip);

                /*$array=array('jujur','disiplin','santun','peduli','t_jawab','percaya_diri');




                foreach ($array as $kumulatif) {
                    
                    $tatib_K=mysql_query("SELECT tatib.$kumulatif ,tatib_range.nilai from tatib,tatib_range where nis='$data11[nis]' AND semester='1' AND tahun_ajaran='1' AND id_kelas='2' AND tatib_range.id=tatib.$kumulatif;");//select nis
                   
                    $array_sum = array();
                   while($row = mysql_fetch_assoc($tatib_K)) {
                       $array_sum[] = $row;
                    }
                   

                   foreach ($array_sum as $value) {
                      if($kumulatif=='jujur'){
                          //$totaljujur += $value['nilai'];
                          $n_jujur=$value['nilai'];
                      }
                      elseif($kumulatif=='disiplin'){
                      $totaldisiplin += $value['nilai'];
                      }
                      elseif($kumulatif=='santun'){
                      $totalsantun += $value['nilai'];
                      }
                      elseif($kumulatif=='peduli'){
                      $totalpeduli += $value['nilai'];
                      }
                      elseif($kumulatif=='t_jawab'){
                      $totalt_jawab += $value['nilai'];
                      }
                      elseif($kumulatif=='percaya_diri'){
                      $totalpercaya_diri += $value['nilai'];
                      }
                      else{}

                    }
                    
                  }*/

                  //
                  //
                  $n_jujur = $jujur[nilai];
                  $totaljujur += $n_jujur;
                  $n_disiplin = $disiplin[nilai];
                  $totaldisiplin += $n_disiplin;
                  $n_santun = $santun[nilai];
                  $totalsantun += $n_santun;
                  $n_peduli = $peduli[nilai];
                  $totalpeduli += $n_peduli;
                  $n_t_jawab = $tanggung[nilai];
                  $totalt_jawab += $n_t_jawab;
                  $n_percaya_diri = $percaya[nilai];
                  $totalpercaya_diri += $n_percaya_diri;


                  //<!--td>$jujur[nilai]</td-->
                  
                  echo "<td>$petugas[nama]</td>
                  <td>$n_jujur</td>
                  <td>$n_disiplin</td>
                  <td>$n_santun</td>
                  <td>$n_peduli</td>
                  <td>$n_t_jawab</td>
                  <td>$n_percaya_diri</td>
                  <td>$totaljujur</td>
                  <td>$totaldisiplin</td>
                  <td>$totalsantun</td>
                  <td>$totalpeduli</td>
                  <td>$totalt_jawab</td>
                  <td>$totalpercaya_diri</td>
                  <td>$data11[keterangan]</td>";
                }
                ?> 
                </tbody>
                <tfoot>
                <tr>
                  <th><center>Tanggal</center></th>
                  <th><center>Petugas</center></th>
                  <th colspan="6"><center>Pelanggaran</center></th>
                  <th colspan="6"><center>Kumulatif</center></th>
                  <th><center>Keterangan</center></th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
			</div>
		</div>
	</section>
	



<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- page script -->
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
  });
</script>
<?php } ?>