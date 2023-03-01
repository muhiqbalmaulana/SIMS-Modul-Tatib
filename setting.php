<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/select2/select2.min.css">
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

          <div class="box box-danger table-responsive">
            <div class="box-header with-border">
              <i class="fa fa-gears"></i><h3 class="box-title"><b>Setting Poin</b></h3>
			  <div class="cols-xs-3" style="width:208px;">
			  <a data-toggle="modal" data-target="#insert">
			  <button type="button" class="btn btn-block btn-success" style="width:130px;margin-top:10px;"><i class="fa fa-plus"><span style="font-family:tahoma;">
				Tambah Data </span></i> </button> </a>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-hover table-striped">
                <thead>
                <tr>
					<th><center>No</center></th>
					<th><center>Nilai</center></th>
					<th><center>Kategori</center></th>
					<th><center>Keterangan</center></th>
					<th><center>Action</center></th>
					</tr>
                </thead>
                <tbody class="tbody">
                <?php
        include ('koneksi.php');
        $qu=mysql_query("SELECT * FROM tatib_range");
        $no=0;
                while($r_tampil=mysql_fetch_array($qu)){
          $no++;
        echo "<tr>
          <td>$no</td>
          <td>$r_tampil[nilai]</td>
          <td>$r_tampil[kode]</td>
          <td>$r_tampil[Keterangan]</td>
          <td><a href='#' class='update_modal' id='$r_tampil[id]'><span data-placement='top' data-toggle='tooltip' title='Update'><button class='btn btn-primary btn-xs' style='margin-left:10px;margin-right:10px;'><span class='glyphicon glyphicon-pencil'> UPDATE</span></button></span></a>
          </td>
          </tr>";}
        ?>
                </tbody>
                <tfoot>
                <tr>
					<th><center>No</center></th>
					<th><center>Nilai</center></th>
					<th><center>Kategori</center></th>
					<th><center>Keterangan</center></th>
					<th><center>Action</center></th>
					</tr>
                </tfoot>
              </table>
			  <!--tambah Siswa-->
			  
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
<script src="plugins/select2/select2.full.min.js"></script>
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
<script>
  $(function () {
    //Initialize Select2 Elements
    $(".select2").select2();
  });
</script>
<script>
$(function(){
            $(document).on('click','.open_modal',function(e){
                e.preventDefault();
                $("#update").modal('show');
                $.post('settingmdl.php',
                    {id:$(this).attr('id')},
                    function(html){
                        $(".myForm5").html(html);
                    }   
                );
            });
        });
</script>	
