<?php
include("koneksi.php");
if($_POST["kelas"]) {
$kelas=$_POST["kelas"];

          $sqo=mysql_query("SELECT * FROM kelas WHERE id='$kelas'");
          $data5=mysql_fetch_array($sqo);
          include ('setTahunSemester.php');
          $tahun=$_SESSION['tahun_ajaran'];
          $sqi=mysql_query("SELECT * FROM tahun_ajaran WHERE id='$tahun'");
          $data4=mysql_fetch_array($sqi);


// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");

// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=Nilai-Point-$data5[nama]-$_SESSION[smt]-$data4[tahun].xls");

?>
            <center><h3><b>Nilai Poin Pelanggaran</b></h3></center>
           <h4><b>Kelas : <? echo $data5['nama']; ?> - </b><b>Semester : <? if($_SESSION['smt']=='1') {echo "Ganjil";} else {echo "Genap";} ?> - </b><b>Tahun Ajaran : <? echo $data4['tahun']; ?></b></h4>
            <table border="1">
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

<? } ?>