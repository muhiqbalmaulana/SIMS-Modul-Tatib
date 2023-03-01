<?php
include('koneksi.php');
if($_POST['id']) {
$id=$_POST['id'];
$sql=mysql_query("SELECT * from tatib_range where id='$id'");
$data=mysql_fetch_array($sql);
?>                  
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Kategori</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-navicon"></i>
                      </div>
                      <select class="form-control" name="kategori" value="<? echo $data[kode]; ?>">
                        <option value="Jujur">Jujur</option>
                        <option value="Disiplin">Disiplin</option>
                        <option value="Santun">Santun</option>
                        <option value="Peduli">Peduli</option>
                        <option value="Tanggung Jawab">Tanggung Jawab</option>
                        <option value="Percaya Diri">Percaya Diri</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Range Nilai</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-bar-chart"></i>
                      </div>
                      <input type="number" class="form-control" name="range" id="inputEmail3" value="<? echo $data[nilai]; ?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Keterangan</label>
                    <div class="input-group col-xs-10">
                      <div class="input-group-addon">
                        <i class="fa fa-sticky-note"></i>
                      </div>
                      <textarea class="form-control" rows="3" name="keterangan" placeholder="Enter ..."><? echo $data['Keterangan']; ?></textarea>
                    </div>
                  </div>

<? } ?>