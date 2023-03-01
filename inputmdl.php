<?php 
include("koneksi.php");
if($_POST["id"]) {
  $nis=$_POST["id"]; 
          $sqo=mysql_query("SELECT a.nama,a.id,b.kelas,b.nis from kelas a, kelas_siswa b where b.nis='$nis' and a.id=b.kelas");
          $data5=mysql_fetch_array($sqo);
          $sqe=mysql_query("SELECT * FROM siswa WHERE nis='$nis'");
          $data8=mysql_fetch_array($sqe);
          include ('setTahunSemester.php');
          $tahun=$_SESSION['tahun_ajaran'];
          $sqi=mysql_query("SELECT * FROM tahun_ajaran WHERE id='$tahun'");
          $data4=mysql_fetch_array($sqi);
  ?>
 

              <h5><b>Nama : <? echo $data8['nama']; ?></b></h5>
              <h5><b>Kelas : <? echo $data5['nama']; ?> - </b><b>Semester : <? if($_SESSION['smt']=='1') {echo "Ganjil";} else {echo "Genap";} ?> - </b><b>Tahun Ajaran : <? echo $data4['tahun']; ?></b></h5>

              <table id="example1" class="table table-bordered table-hover table-striped">
                <thead>
                <tr>
                  <th rowspan="2">Tanggal</th>
                  <th rowspan="2">Petugas</th>
                  <th colspan="6">Pelanggaran</th>
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
                $sqp=mysql_query("SELECT * from tatib where nis='$nis';");
                $data3=mysql_fetch_array($sqp);
                  echo "
                <tr>
                  <td>$data3[tanggal]</td>
                  <td></td>
                  <td>$data3[jujur]</td>
                  <td>$data3[disiplin]</td>
                  <td>$data3[santun]</td>
                  <td>$data3[peduli]</td>
                  <td>$data3[t_jawab]</td>
                  <td>$data3[percaya_diri]</td>
                  <td>$data3[keterangan]</td> 
                </tr>";
                ?>
                </tbody>
              </table>

<? } ?>