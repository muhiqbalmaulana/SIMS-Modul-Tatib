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
              <i class="fa fa-plus-square"></i><h3 class="box-title"><b>Input Tata Tertib</b></h3>
              <h4><b>Kelas : <? echo $data5['nama']; ?> - </b><b>Semester : <? if($_SESSION['smt']=='1') {echo "Ganjil";} else {echo "Genap";} ?> - </b><b>Tahun Ajaran : <? echo $data4['tahun']; ?></b></h4>
              <div class="cols-xs-3" style="width:208px;">
              <a data-toggle="modal" data-target="#Tambah">
              <button type="button" class="btn btn-block btn-primary" style="width:130px;margin-top:10px;"><i class="fa fa-refresh"><span style="font-family:tahoma;">
              Change </span></i> </button> </a>
              <a data-toggle="modal" data-target="#add">
              <button type="button" class="btn btn-block btn-success" style="width:130px;margin-top:10px;"><i class="fa fa-plus"><span style="font-family:tahoma;">
              Add </span></i> </button> </a></div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              
              <table id="example1" class="table table-bordered table-hover table-striped">
                <thead>
                <tr>
                  <th rowspan="2">Tanggal</th>
                  <th rowspan="2">Nama Siswa</th>
                  <th colspan="6">Kumulatif</th>
                  <th rowspan="2">Keterangan</th>
                  <th rowspan="2">Action</th>
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
                <tr>
                  <td>01/02/2003</td>
                  <td>Andre</td>
                  <td>25</td>
                  <td>0</td>
                  <td>25</td>
                  <td>20</td>
                  <td>30</td>
                  <td>15</td>
                  <td>okokokok</td>
                  <td>Detail</td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                  <th>Tanggal</th>
                  <th>Nama Siswa</th>
                  <th colspan="6">Kumulatif</th>
                  <th>Keterangan</th>
                  <th>Action</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
			</div>
		</div>
	</section>
	   <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-plus" style="margin-right:10px;"></i>Add</h4>
            </div>
            <div class="modal-body">
              <div class="box-body">
                <form class="myForm4" name="myForm2" method="POST">
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Tanggal</label>
                    <div class="input-group date col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="text" class="form-control pull-right" id="datepicker">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">NIS</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-user"></i>
                      </div>
                      <select class="form-control">
                      <?
                      $sqp=mysql_query("SELECT d.nis, d.nama from kelas_siswa c, siswa d where c.kelas='$kelas' and d.nis=c.nis;");
                      while($data3=mysql_fetch_array($sqp))
                      {
                        echo '<option value="'.$data3['nis'].'">'.$data3['nis']." - ".$data3['nama'].'</option>';
                      }
                      ?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Jujur</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control">
                      <?
                      $sqw=mysql_query("SELECT d.nis, d.nama from kelas_siswa c, siswa d where c.kelas='$kelas' and d.nis=c.nis;");
                      while($data1=mysql_fetch_array($sqw))
                      {
                        echo '<option value="'.$data1['nis'].'">'.$data1['nis']." - ".$data3['nama'].'</option>';
                      }
                      ?>
                        <option>wkwk</option>
                      </select>
                    </div>
                  </div><div class="form-group">
                    <label class="col-sm-2 control-label">Disiplin</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control">
                        <option>wkwk</option>
                      </select>
                    </div>
                  </div><div class="form-group">
                    <label class="col-sm-2 control-label">Santun</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control">
                        <option>wkwk</option>
                      </select>
                    </div>
                  </div><div class="form-group">
                    <label class="col-sm-2 control-label">Peduli</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control">
                        <option>wkwk</option>
                      </select>
                    </div>
                  </div><div class="form-group">
                    <label class="col-sm-2 control-label">Tanggung Jawab</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control">
                        <option>wkwk</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Percaya Diri</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control">
                        <option>wkwk</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Keterangan</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-sticky-note"></i>
                      </div>
                      <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
                    </div>
                  </div>
                  <button type="submit" class="btn btn-primary col-md-12" id="submitmdl"><b>Submit</b></button>
                </form>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-danger pull-left" id="cancel" data-dismiss="modal" style="padding:10px;">Cancel</button>
              <div id="alert1" class="pull-right"></div>
            </div>            
          </div>
        </div>
      </div>

<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
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