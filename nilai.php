<?php 
include("koneksi.php");
if($_POST["kelas"]) {
  $kelas=$_POST["kelas"]; ?>
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
          include ('setTahunSemester.php');
          $tahun=$_SESSION['tahun_ajaran'];
          $sqi=mysql_query("SELECT * FROM tahun_ajaran WHERE id='$tahun'");
          $data4=mysql_fetch_array($sqi);
          ?>
          <div class="box box-primary">
            <div class="box-header">
              <i class="fa fa-pie-chart"></i><h3 class="box-title"><b>Nilai Poin Pelanggaran</b></h3>
              <h4><b>Kelas : <? echo $data5['nama']; ?> - </b><b>Semester : <? if($_SESSION['smt']=='1') {echo "Ganjil";} else {echo "Genap";} ?> - </b><b>Tahun Ajaran : <? echo $data4['tahun']; ?></b></h4>
              <div class="cols-xs-3" style="width:208px;">
              <a data-toggle="modal" data-target="#nilai">
              <button type="button" class="btn btn-block btn-primary" style="width:130px;margin-top:10px;"><i class="fa fa-refresh"><span style="font-family:tahoma;">
              Kelas </span></i> </button> </a>
              </div>
              <!--a href="excel.php"-->
              <button type="button" class="btn btn-block btn-success pull-right excel" id="excel" style="width:130px;margin-top:10px;"><i class="fa fa-file-excel-o"><span style="font-family:tahoma;">
              Export to Excel </span></i> </button>
              <button type="button" class="btn btn-block btn-success pull-right excel" id="1" onclick="reply_click(this.id)" style="width:130px;margin-top:10px;"><i class="fa fa-file-excel-o"><span style="font-family:tahoma;">
              Export to Excel </span></i> </button>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-bordered table-hover table-striped" id="#tabel_excel">
                <thead>
                <tr>
                  <th rowspan="2"><center>No</center></th>
                  <th rowspan="2"><center>NIS</center></th>
                  <th rowspan="2"><center>Nama Siswa</center></th>
                  <th colspan="6"><center>Kumulatif</center></th>
                </tr>
                <tr align="center" style="font-size: 13px; text-align: center;">
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
                $no=0;
                $totaljujur="";
                  $totaldisiplin="";
                  $totalsantun="";
                  $totalpeduli="";
                  $totalt_jawab="";
                  $totalpercaya_diri="";
                $array=array('jujur','disiplin','santun','peduli','t_jawab','percaya_diri');

                $sqp=mysql_query("SELECT * from kelas_siswa where kelas='$kelas'");
                while($data3=mysql_fetch_array($sqp))
                {
                  $no++;
                  $totaljujur="";
                  $totaldisiplin="";
                  $totalsantun="";
                  $totalpeduli="";
                  $totalt_jawab="";
                  $totalpercaya_diri="";
                  echo "
                <tr>
                  <td>$no</td>
                  <td>$data3[nis]</td>
                  ";
                  $nm=mysql_query("SELECT nama from siswa where nis='$data3[nis]'");
                  $nama=mysql_fetch_array($nm);
                  echo " <td>$nama[nama]</td>";
                  $datakum='';
                  foreach ($array as $kumulatif) {
                    
                    $tatib_K=mysql_query("SELECT tatib.$kumulatif ,tatib_range.nilai from tatib,tatib_range where nis='$data3[nis]' AND semester='1' AND tahun_ajaran='1' AND id_kelas='2' AND tatib_range.id=tatib.$kumulatif;
");//select nis
                   
                    $array_sum = array();
                   while($row = mysql_fetch_assoc($tatib_K)) {
                       $array_sum[] = $row;
                    }
                   
                   foreach ($array_sum as $value) {
                       
                        
                      if($kumulatif=='jujur'){
                       
                      $totaljujur += $value['nilai'];
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
                    
                  }
                  
                  
                  echo "
                  <td>$totaljujur</td>
                  <td>$totaldisiplin</td>
                  <td>$totalsantun</td>
                  <td>$totalpeduli</td>
                  <td>$totalt_jawab</td>
                  <td>$totalpercaya_diri</td>
                  
                </tr>"; 
                
                }

                ?>
                </tbody>
                <tfoot>
                <tr>
                  <th><center>No</center></th>
                  <th><center>NIS</center></th>
                  <th><center>Nama Siswa</center></th>
                  <th><center>Jujur</center></th>
                  <th><center>Disiplin</center></th>
                  <th><center>Santun</center></th>
                  <th><center>Peduli</center></th>
                  <th><center>Tanggung Jawab</center></th>
                  <th><center>Percaya Diri</center></th>
                </tr>
                </tfoot>
              </table>
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

 function reply_click(clicked_id)
    {
      alert(clicked_id);
    }
</script>
<?php } ?>