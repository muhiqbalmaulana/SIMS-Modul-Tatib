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

              <div class="form-group">
                <? 
                  $ttb=mysql_query("SELECT * from tatib where id='$id'");
                  $tatib=mysql_fetch_array($ttb);
                  $ssw=mysql_query("SELECT * from siswa where nis='$tatib[nis]'");
                  $siswa=mysql_fetch_array($ssw);
                  $ptg=mysql_query("SELECT * from guru where nip='$tatib[nip]'");
                  $petugas=mysql_fetch_array($ptg);
                ?>
                <input type="hidden" name="id" value="<? echo $tatib['id'] ?>" >
                <input type="hidden" value="<? echo $siswa['nis'] ?>" name="nis">
                <h4><b>Petugas : <? echo $petugas['nama']; ?></b></h4>
                <h4><b>NIS : <? echo $siswa['nis']; ?></b></h4>
                <h4><b>Nama : <? echo $siswa['nama']; ?></b></h4>
                  <table id="example1" class="table table-bordered table-hover table-striped">
                <thead>
                <tr>
                  <th rowspan="2">Tanggal</th>
                  <th colspan="6"><center>Kumulatif</center></th>
                  <th rowspan="2">Keterangan</th>
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
                $sqm=mysql_query("SELECT * from tatib where id='$tatib[id]'");
                while($data11=mysql_fetch_array($sqm)){
                echo "
                <tr>
                  <td>$data11[tanggal]</td>";
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
                  echo "<td>$jujur[Keterangan]</td>
                  <td>$disiplin[Keterangan]</td>
                  <td>$santun[Keterangan]</td>
                  <td>$peduli[Keterangan]</td>
                  <td>$tanggung[Keterangan]</td>
                  <td>$percaya[Keterangan]</td>
                  <td>$data11[keterangan]</td>
                </tr>
                ";
              }
                ?>
                </tbody>
                <tfoot>
                <tr>
                  <th>Tanggal</th>
                  <th colspan="6"><center>Kumulatif</center></th>
                  <th>Keterangan</th>
                </tr>
                </tfoot>
              </table>
            </div>
              <h5><b>Apa Anda yakin ingin menghapus data diatas ?</b></h5> 
                  <button type="submit" class="btn btn-primary col-md-12 drop" id="<? echo $tatib[id_kelas]; ?>" ><b>Hapus</b></button>

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