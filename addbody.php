                  <div class="col-xs-10">
                    <select name="kelas" class="form-control kelasa" id="kelas">
                      <option>Kelas</option> 
                      <?php
                        $tahun=$_SESSION['tahun_ajaran'];
                        $sqa=mysql_query("SELECT id,tahun_ajaran FROM jurusan a WHERE a.tahun_ajaran='$tahun'");
                        while($data3=mysql_fetch_assoc($sqa)){
                        $sql=mysql_query("SELECT * FROM kelas b WHERE b.jurusan='$data3[id]'"); 
                        while($data2=mysql_fetch_array($sql))
                         {
                          echo '<option value="'.$data2['id'].'">'.$data2['nama'].'</option>';
                         }
                       }
                      ?>
                    </select>
                  </div>