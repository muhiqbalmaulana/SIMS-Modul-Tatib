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
                  $ttb=mysql_query("SELECT * from tatib_range where id='$id'");
                  $tatib=mysql_fetch_array($ttb);
                ?>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Kategori</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-navicon"></i>
                      </div>
                      <select class="form-control" name="kode">
                        <option <? if( $tatib[kode]=='Jujur'){echo "selected"; } ?> value="Jujur">Jujur</option>
                        <option <? if( $tatib[kode]=='Disiplin'){echo "selected"; } ?> value="Disiplin">Disiplin</option>
                        <option <? if( $tatib[kode]=='Santun'){echo "selected"; } ?> value="Santun">Santun</option>
                        <option <? if( $tatib[kode]=='Peduli'){echo "selected"; } ?> value="Peduli">Peduli</option>
                        <option <? if( $tatib[kode]=='Tanggung Jawab'){echo "selected"; } ?> value="Tanggung Jawab">Tanggung Jawab</option>
                        <option <? if( $tatib[kode]=='Percaya Diri'){echo "selected"; } ?> value="Percaya Diri">Percaya Diri</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Range Nilai</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-bar-chart"></i>
                      </div>
                      <input type="number" class="form-control" name="nilai" value="<? echo $tatib[nilai]; ?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Keterangan</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-sticky-note"></i>
                      </div>
                      <textarea class="form-control" rows="3" name="keterangan" placeholder="Enter ..."><? echo $tatib[Keterangan]; ?></textarea>
                    </div>
                  </div>
                  <input type="hidden" name="id" value="<? echo $tatib[id]; ?>">
                  <button type="submit" class="btn btn-primary col-md-12 upd"><b>Submit</b></button>

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