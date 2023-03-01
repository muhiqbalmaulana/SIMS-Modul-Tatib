<?php

class TahunAjaran {

    static function detail($id) {
        $query = sprintf("SELECT * FROM tahun_ajaran where id=%d", $id);
        return mysql_fetch_assoc(mysql_query($query));
    }

    static function getAllData() {
        $exe = mysql_query("SELECT * FROM tahun_ajaran");
        while ($row = mysql_fetch_assoc($exe))
            $data[] = $row;
        return $data;
    }

}

?>