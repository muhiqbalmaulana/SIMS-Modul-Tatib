<?php
include("koneksi.php");
include("setTahunSemester.php");
$tahun=$_SESSION['tahun_ajaran'];
$sem=$_SESSION['smt'];
$dj=mysql_num_rows(mysql_query("SELECT * from tatib where jujur>'0' and semester='$sem' and tahun_ajaran='$tahun'"));
$dd=mysql_num_rows(mysql_query("SELECT * from tatib where disiplin>'0' and semester='$sem' and tahun_ajaran='$tahun'"));
$ds=mysql_num_rows(mysql_query("SELECT * from tatib where santun>'0' and semester='$sem' and tahun_ajaran='$tahun'"));
$dp=mysql_num_rows(mysql_query("SELECT * from tatib where peduli>'0' and semester='$sem' and tahun_ajaran='$tahun'"));
$dt=mysql_num_rows(mysql_query("SELECT * from tatib where t_jawab>'0' and semester='$sem' and tahun_ajaran='$tahun'"));
$dpd=mysql_num_rows(mysql_query("SELECT * from tatib where percaya_diri>'0' and semester='$sem' and tahun_ajaran='$tahun'"));
?>

  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Morris charts -->
  <link rel="stylesheet" href="../plugins/morris/morris.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Home
        <small>Dashboard</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-eye"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><h4>Jujur</h4></span>
              <span class="info-box-number"><?php echo $dj; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-orange"><i class="glyphicon glyphicon-ok"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><h4>Disiplin</h4></span>
              <span class="info-box-number"><?php echo $dd; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="glyphicon glyphicon-heart"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><h4>Santun</h4></span>
              <span class="info-box-number"><?php echo $ds; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-green"><i class="fa fa-users"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><h4>Peduli</h4></span>
              <span class="info-box-number"><?php echo $dp; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-blue"><i class="glyphicon glyphicon-thumbs-up"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><h4>Tanggung Jawab</h4></span>
              <span class="info-box-number"><?php echo $dt; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-purple"><i class="fa fa-user"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><h4>Percaya Diri</h4></span>
              <span class="info-box-number"><?php echo $dpd; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- ./col -->
      </div>
      <!-- /.row -->

      <!--  CHART -->

      <div class="row">
        <div class="col-md-6">
          <!-- AREA CHART -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Jujur</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="jujur-chart" style="height: 300px;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- DONUT CHART -->
          <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Santun</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="santun-chart" style="height: 300px; position: relative;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- DONUT CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Tanggung Jawab</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="tanggung-chart" style="height: 300px; position: relative;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col (LEFT) -->
        <div class="col-md-6">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Disiplin</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="disiplin-chart" style="height: 300px;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- BAR CHART -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Peduli</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="peduli-chart" style="height: 300px;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

           <!-- BAR CHART -->
          <div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">Percaya Diri</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="percaya-chart" style="height: 300px;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col (RIGHT) -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->

<!-- jQuery 2.2.3 -->
<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="../plugins/morris/raphael-min.js"></script>
<script src="plugins/morris/morris.min.js"></script>
<!-- FastClick -->
<script src="../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(document).ready(function() {
    "use strict";

    var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    // AREA CHART
    var line = new Morris.Line({
      element: 'jujur-chart',
      resize: true,
      data: [

      <?php
      $jrc=mysql_query("SELECT date_format(tanggal,'%m') as bln, date_format(tanggal,'%Y') as thn from tatib where jujur>'0' and tahun_ajaran='$tahun' and semester='$sem' and date_format(tanggal,'%m')=date_format(tanggal,'%m') and date_format(tanggal,'%Y')=date_format(tanggal,'%Y') group by date_format(tanggal,'%m') ");
      while($jrchart=mysql_fetch_array($jrc)){
      $hsljr=$jrchart['thn']."-".$jrchart['bln'];
      $jumjr=mysql_num_rows(mysql_query("SELECT * from tatib where date_format(tanggal,'%m')='$jrchart[bln]' and date_format(tanggal,'%Y')='$jrchart[thn]' and jujur>'0' and tahun_ajaran='$tahun' and semester='$sem'"));
      ?>  

        {
          mjr: "<?php echo $hsljr; ?>", // <-- valid timestamp strings
          ajr: <?php echo $jumjr; ?>
          
        }, 
      <?php
        }
      ?>
       ],
        xkey: 'mjr',
        ykeys: ['ajr'],
        labels: ['Jumlah Pelanggaran'],
        
        xLabelFormat: function(x) { // <--- x.getMonth() returns valid index
          var month = months[x.getMonth()];
          return month;
        },
        dateFormat: function(x) {
          var month = months[new Date(x).getMonth()];
          return month;
        },
      });
    

    // LINE CHART
    var dsmonths = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    var line = new Morris.Line({
      element: 'disiplin-chart',
      resize: true,
      data: [

      <?php
      $dsc=mysql_query("SELECT date_format(tanggal,'%m') as bln, date_format(tanggal,'%Y') as thn from tatib where disiplin>'0' and tahun_ajaran='$tahun' and semester='$sem' and date_format(tanggal,'%m')=date_format(tanggal,'%m') and date_format(tanggal,'%Y')=date_format(tanggal,'%Y') group by date_format(tanggal,'%m') ");
      while($dschart=mysql_fetch_array($dsc)){
      $hslds=$dschart['thn']."-".$dschart['bln'];
      $jumds=mysql_num_rows(mysql_query("SELECT * from tatib where date_format(tanggal,'%m')='$dschart[bln]' and date_format(tanggal,'%Y')='$dschart[thn]' and disiplin>'0' and tahun_ajaran='$tahun' and semester='$sem'"));
      ?>  

        {
          mds: "<?php echo $hslds; ?>", // <-- valid timestamp strings
          ads: <?php echo $jumds; ?>
          
        }, 
      <?php
        }
      ?>
       ],
        xkey: 'mds',
        ykeys: ['ads'],
        labels: ['Jumlah Pelanggaran'],
        
        xLabelFormat: function(x) { // <--- x.getMonth() returns valid index
          var dsmonth = months[x.getMonth()];
          return dsmonth;
        },
        dateFormat: function(x) {
          var dsmonth = dsmonths[new Date(x).getMonth()];
          return dsmonth;
        },
      });

    //DONUT CHART
    var stmonths = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    var line = new Morris.Line({
      element: 'santun-chart',
      resize: true,
      data: [

      <?php
      $stc=mysql_query("SELECT date_format(tanggal,'%m') as bln, date_format(tanggal,'%Y') as thn from tatib where santun>'0' and tahun_ajaran='$tahun' and semester='$sem' and date_format(tanggal,'%m')=date_format(tanggal,'%m') and date_format(tanggal,'%Y')=date_format(tanggal,'%Y') group by date_format(tanggal,'%m') ");
      while($stchart=mysql_fetch_array($stc)){
      $hslst=$stchart['thn']."-".$stchart['bln'];
      $jumst=mysql_num_rows(mysql_query("SELECT * from tatib where date_format(tanggal,'%m')='$stchart[bln]' and date_format(tanggal,'%Y')='$stchart[thn]' and santun>'0' and tahun_ajaran='$tahun' and semester='$sem'"));
      ?>  

        {
          mst: "<?php echo $hsljr; ?>", // <-- valid timestamp strings
          ast: <?php echo $jumjr; ?>
          
        }, 
      <?php
        }
      ?>
       ],
        xkey: 'mst',
        ykeys: ['ast'],
        labels: ['Jumlah Pelanggaran'],
        
        xLabelFormat: function(x) { // <--- x.getMonth() returns valid index
          var stmonth = stmonths[x.getMonth()];
          return stmonth;
        },
        dateFormat: function(x) {
          var stmonth = stmonths[new Date(x).getMonth()];
          return stmonth;
        },
      });
    //BAR CHART
    var pdmonths = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    var line = new Morris.Line({
      element: 'peduli-chart',
      resize: true,
      data: [

      <?php
      $pdc=mysql_query("SELECT date_format(tanggal,'%m') as bln, date_format(tanggal,'%Y') as thn from tatib where peduli>'0' and tahun_ajaran='$tahun' and semester='$sem' and date_format(tanggal,'%m')=date_format(tanggal,'%m') and date_format(tanggal,'%Y')=date_format(tanggal,'%Y') group by date_format(tanggal,'%m') ");
      while($pdchart=mysql_fetch_array($pdc)){
      $hslpd=$pdchart['thn']."-".$pdchart['bln'];
      $jumpd=mysql_num_rows(mysql_query("SELECT * from tatib where date_format(tanggal,'%m')='$pdchart[bln]' and date_format(tanggal,'%Y')='$pdchart[thn]' and peduli>'0' and tahun_ajaran='$tahun' and semester='$sem'"));
      ?>  

        {
          mpd: "<?php echo $hslpd; ?>", // <-- valid timestamp strings
          apd: <?php echo $jumpd; ?>
          
        }, 
      <?php
        }
      ?>
       ],
        xkey: 'mpd',
        ykeys: ['apd'],
        labels: ['Jumlah Pelanggaran'],
        
        xLabelFormat: function(x) { // <--- x.getMonth() returns valid index
          var pdmonth = pdmonths[x.getMonth()];
          return pdmonth;
        },
        dateFormat: function(x) {
          var pdmonth = pdmonths[new Date(x).getMonth()];
          return pdmonth;
        },
      });
    //BAR CHART
    var tjmonths = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    var line = new Morris.Line({
      element: 'tanggung-chart',
      resize: true,
      data: [

      <?php
      $tjc=mysql_query("SELECT date_format(tanggal,'%m') as bln, date_format(tanggal,'%Y') as thn from tatib where t_jawab>'0' and tahun_ajaran='$tahun' and semester='$sem' and date_format(tanggal,'%m')=date_format(tanggal,'%m') and date_format(tanggal,'%Y')=date_format(tanggal,'%Y') group by date_format(tanggal,'%m') ");
      while($tjchart=mysql_fetch_array($tjc)){
      $hsltj=$tjchart['thn']."-".$tjchart['bln'];
      $jumtj=mysql_num_rows(mysql_query("SELECT * from tatib where date_format(tanggal,'%m')='$tjchart[bln]' and date_format(tanggal,'%Y')='$tjchart[thn]' and t_jawab>'0' and tahun_ajaran='$tahun' and semester='$sem'"));
      ?>  

        {
          mtj: "<?php echo $hsltj; ?>", // <-- valid timestamp strings
          atj: <?php echo $jumtj; ?>
          
        }, 
      <?php
        }
      ?>
       ],
        xkey: 'mtj',
        ykeys: ['atj'],
        labels: ['Jumlah Pelanggaran'],
        
        xLabelFormat: function(x) { // <--- x.getMonth() returns valid index
          var tjmonth = tjmonths[x.getMonth()];
          return tjmonth;
        },
        dateFormat: function(x) {
          var tjmonth = tjmonths[new Date(x).getMonth()];
          return tjmonth;
        },
      });
    //BAR CHART
    var pcmonths = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    var line = new Morris.Line({
      element: 'percaya-chart',
      resize: true,
      data: [

      <?php
      $pcc=mysql_query("SELECT date_format(tanggal,'%m') as bln, date_format(tanggal,'%Y') as thn from tatib where percaya_diri>'0' and tahun_ajaran='$tahun' and semester='$sem' and date_format(tanggal,'%m')=date_format(tanggal,'%m') and date_format(tanggal,'%Y')=date_format(tanggal,'%Y') group by date_format(tanggal,'%m') ");
      while($pcchart=mysql_fetch_array($pcc)){
      $hslpc=$pcchart['thn']."-".$pcchart['bln'];
      $jumpc=mysql_num_rows(mysql_query("SELECT * from tatib where date_format(tanggal,'%m')='$pcchart[bln]' and date_format(tanggal,'%Y')='$pcchart[thn]' and percaya_diri>'0' and tahun_ajaran='$tahun' and semester='$sem'"));
      ?>  

        {
          mpc: "<?php echo $hslpc; ?>", // <-- valid timestamp strings
          apc: <?php echo $jumpc; ?>
          
        }, 
      <?php
        }
      ?>
       ],
        xkey: 'mpc',
        ykeys: ['apc'],
        labels: ['Jumlah Pelanggaran'],
        
        xLabelFormat: function(x) { // <--- x.getMonth() returns valid index
          var pcmonth = pcmonths[x.getMonth()];
          return pcmonth;
        },
        dateFormat: function(x) {
          var pcmonth = pcmonths[new Date(x).getMonth()];
          return pcmonth;
        },
      });
  });
</script>