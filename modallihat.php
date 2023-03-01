<? include("koneksi.php");
include("setTahunSemester.php"); 
$id=$_POST['id'];
$cek_nis=mysql_num_rows(mysql_query("SELECT * FROM tatib WHERE nis='$id'"));
if ($cek_nis > 0) {

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
                  $ttb=mysql_query("SELECT * from tatib where nis='$id'");
                  $tatib=mysql_fetch_array($ttb);
                  $ssw=mysql_query("SELECT * from siswa where nis='$id'");
                  $siswa=mysql_fetch_array($ssw);
                  $ptg=mysql_query("SELECT * from guru where nip='$tatib[nip]'");
                  $petugas=mysql_fetch_array($ptg);
                  $thn=mysql_query("SELECT * from tahun_ajaran where id='$_SESSION[tahun_ajaran]'");
                  $tahun=mysql_fetch_array($thn);
                  $skl=mysql_query("SELECT * from kelas_siswa where nis='$id'");
                  $siskel=mysql_fetch_array($skl);
                  $kls=mysql_query("SELECT * from kelas where id='$siskel[kelas]'");
                  $kelas=mysql_fetch_array($kls);
                ?>
                <input type="hidden" value="<? echo $siswa['nis'] ?>" name="nis">
                <h4><b>Petugas : <? echo $petugas['nama']; ?></b></h4>
                <h4><b>Nama : <? echo $siswa['nama']; ?></b></h4>
                <h4><b>Kelas : <? echo $kelas['nama']; ?> - </b><b>Semester : <? if($_SESSION['smt']=='1') {echo "Ganjil";} else {echo "Genap";} ?> - </b><b>Tahun Ajaran : <? echo $tahun['tahun']; ?></b></h4>
                  <table id="example1" class="table table-bordered table-hover table-striped">
                <thead>
                <tr>
                  <th rowspan="2">Tanggal</th>
                  <th colspan="6"><center>pelanggaran</center></th>
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
                $sqm=mysql_query("SELECT * from tatib where nis='$id'");
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
                  echo "<td>$jujur[nilai]</td>
                  <td>$disiplin[nilai]</td>
                  <td>$santun[nilai]</td>
                  <td>$peduli[nilai]</td>
                  <td>$tanggung[nilai]</td>
                  <td>$percaya[nilai]</td>
                  <td>$data11[keterangan]</td> 
                </tr>
                ";
                }
                ?>
                </tbody>
              </table>
            </div>

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
<? }
else {} ?>