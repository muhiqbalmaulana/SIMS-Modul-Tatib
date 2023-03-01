<? include("koneksi.php"); 
if($_POST['id']){
  $id=$_POST['id'];
?>
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

                <? 
                  $ttb=mysql_query("SELECT * from tatib where id='$id'");
                  $tatib=mysql_fetch_array($ttb);
                ?>
                <input type="hidden" name="id" value="<? echo $tatib['id'] ?>" >
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Tanggal</label>
                    <div class="input-group date col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="date" class="form-control pull-right" id="datepicker" name="tanggal1" value="<? echo $tatib['tanggal'] ?>" >
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">NIS</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-user"></i>
                      </div>
                      <select class="form-control" name="nis1">
                      <?
                      $sqp=mysql_query("SELECT * from siswa where nis='$tatib[nis]'");
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
                      <select class="form-control" name="jujur1">
                      <option>--</option>
                      <?
                      $sqw=mysql_query("SELECT * from tatib_range where kode='Jujur' group by id='$tatib[jujur]'");
                      while($data1=mysql_fetch_array($sqw))
                      {
                        $selected = ($tatib['jujur'] == $data1['id'] ? 'selected="selected"' : '');
                        echo '<option value="'.$data1['id'].'"'.$selected.'>'.$data1['Keterangan'].'</option>';
                      }
                      ?>
                        
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Disiplin</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control" name="disiplin1">
                      <option>--</option>
                        <?
                      $sqw=mysql_query("SELECT * from tatib_range where kode='Disiplin'");
                      while($data1=mysql_fetch_array($sqw))
                      {
                        $selected = ($tatib['disiplin'] == $data1['id'] ? 'selected="selected"' : '');
                        echo '<option value="'.$data1['id'].'"'.$selected.'>'.$data1['Keterangan'].'</option>';
                      }
                      ?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Santun</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control" name="santun1">
                      <option>--</option>
                        <?
                      $sqw=mysql_query("SELECT * from tatib_range where kode='Santun'");
                      while($data1=mysql_fetch_array($sqw))
                      {
                        $selected = ($tatib['santun'] == $data1['id'] ? 'selected="selected"' : '');
                        echo '<option value="'.$data1['id'].'"'.$selected.'>'.$data1['Keterangan'].'</option>';
                      }
                      ?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Peduli</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control" name="peduli1">
                      <option>--</option>
                        <?
                      $sqw=mysql_query("SELECT * from tatib_range where kode='Peduli'");
                      while($data1=mysql_fetch_array($sqw))
                      {
                        $selected = ($tatib['peduli'] == $data1['id'] ? 'selected="selected"' : '');
                        echo '<option value="'.$data1['id'].'"'.$selected.'>'.$data1['Keterangan'].'</option>';
                      }
                      ?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Tanggung Jawab</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control" name="t_jawab1">
                      <option>--</option>
                        <?
                      $sqw=mysql_query("SELECT * from tatib_range where kode='Tanggung Jawab'");
                      while($data1=mysql_fetch_array($sqw))
                      {
                        $selected = ($tatib['t_jawab'] == $data1['id'] ? 'selected="selected"' : '');
                        echo '<option value="'.$data1['id'].'"'.$selected.'>'.$data1['Keterangan'].'</option>';
                      }
                      ?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Percaya Diri</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-check-square-o"></i>
                      </div>
                      <select class="form-control" name="p_diri1">
                      <option>--</option>
                        <?
                      $sqw=mysql_query("SELECT * from tatib_range where kode='Percaya Diri'");
                      while($data1=mysql_fetch_array($sqw))
                      {
                        $selected = ($tatib['percaya_diri'] == $data1['id'] ? 'selected="selected"' : '');
                        echo '<option value="'.$data1['id'].'"'.$selected.'>'.$data1['Keterangan'].'</option>';
                      }
                      ?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Keterangan</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-sticky-note"></i>
                      </div>
                      <textarea class="form-control" rows="3" name="keterangan1" placeholder="Enter ..."><? echo $tatib[keterangan]; ?></textarea>
                    </div>
                  </div>
                  <button type="submit" class="btn btn-primary pull-left submot" id="<? echo $tatib[id_kelas]; ?>" ><b>Submit</b></button>
                  <button class="btn btn-danger pull-right" id="cancel" data-dismiss="modal" style="padding:10px;">Batal</button>

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
<? } ?>