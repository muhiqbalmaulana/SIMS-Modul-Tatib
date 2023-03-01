$(document).ready(function(){
    window.onload = Loaddashboard();
    $("a#home").click(function(){
        Loaddashboard();
    });
    // $("a#input").click(function(){
    //     Loadinput();
    // });
    // $("a#kelas").click(function(){
    //     Loadkelas();
    // });
    // $("a#siswa").click(function(){
    //     Loadsiswa();
    // });
    // $("a#nilai").click(function(){
    //     Loadnilai();
    // });
    $("a#setting").click(function(){
        Loadsetting();
    });
});

function loading(){
    $("#halamannya").hide();
    $("#halamannya").fadeIn("slow");
}
function Loaddashboard(){
    loading();
    $("#halamannya").load("dashboard.php");
};
// function Loadinput(){
//     loading();
//     $("#halamannya").load("input.php");
// };
// function Loadkelas(){
//     loading();
//     $("#halamannya").load("kelas.php");
// };
// function Loadsiswa(){
//     loading();
//     $("#halamannya").load("siswa.php");
// };
// function Loadnilai(){
//     loading();
//     $("#halamannya").load("nilai.php");
// };
function Loadsetting(){
    loading();
    $("#halamannya").load("setting.php");
};

// $(function () {
//     $("#example1").DataTable();
//     $('#example2').DataTable({
//       "paging": true,
//       "lengthChange": false,
//       "searching": false,
//       "ordering": true,
//       "info": true,
//       "autoWidth": false
//     });
//   });

 $(function(){
            $(document).on('click','#excel',function(e){
    
    window.open('data:application/vnd.ms-excel,' + $('#tabel_excel').html());
    e.preventDefault();
    alert("coba");
});
});

        $().ready(function(){
            $("#cmbTahun").change(function(){
                    var tahun_ajaran = $(this).val();
                    $.post( 'setTahunSemester.php',
                    'do=set&tahun='+tahun_ajaran,
                    function (data){                        
                        window.location.reload();
                    }, 
                    'json')
                })
                $("#cmbSemester").change(function(){
                    $.post( 'setTahunSemester.php', 
                    'do=set_smt&smt='+$(this).val(), 
                    function (data){
                        window.location.reload();
                    }, 
                    'json')
                })          
        });


$(document).ready(function()
{
 $(".kelasi").change(function()
 {
  var id=$(this).val();
  var dataString = 'id='+ id;

  $.ajax
  ({
   type: "POST",
   url: "dropsiswa.php",
   data: dataString,
   cache: false,
   success: function(html)
   {
    $(".siswa").html(html);
   } 
  });
 });
});


$(function(){
            $(document).on('click','.open_modal',function(e){
                e.preventDefault();
                $("#add").modal('show');
                $.post('modalinput.php',
                    {id:$(this).attr('id')},
                    function(html){
                        $(".myForm9").html(html);
                    }   
                );
            });
        });

$(function(){
            $(document).on('click','.edit_modal',function(e){
                e.preventDefault();
                $("#edit").modal('show');
                $.post('modalupdate.php',
                    {id:$(this).attr('id')},
                    function(html){
                        $(".myForm10").html(html);
                    }   
                );
            });
        });

$(function(){
            $(document).on('click','.hapus_modal',function(e){
                e.preventDefault();
                $("#hapus").modal('show');
                $.post('modalhapus.php',
                    {id:$(this).attr('id')},
                    function(html){
                        $(".myForm11").html(html);
                    }   
                );
            });
        });

$(function(){
            $(document).on('click','.update_modal',function(e){
                e.preventDefault();
                $("#update").modal('show');
                $.post('modaledit.php',
                    {id:$(this).attr('id')},
                    function(html){
                        $(".myForm5").html(html);
                    }   
                );
            });
        });

$(function(){
            $(document).on('click','.detail_modal',function(e){
                e.preventDefault();
                $("#lihat").modal('show');
                $.post('modallihat.php',
                    {id:$(this).attr('id')},
                    function(html){
                        $(".myForm12").html(html);
                    }   
                );
            });
        });


$(function() {

$(".myForm1").submit(function() {

    $.ajax({
        type: "POST",
        url: "input.php",
        data: $(this).serialize(),
        beforeSend:function(){
             $('#alert').text("Please Wait");
           },
        success: function(html) {
            $('#Tambah').modal('hide');
            $('#halamannya').html(html);
        },
        error: function() {
            alert("Error");
        },
    });
    return false;
});

$(".myForm2").submit(function() {

    $.ajax({
        type: "POST",
        url: "kelas.php",
        data: $(this).serialize(),
        beforeSend:function(){
             $('#alert1').text("Please Wait");
           },
        success: function(html) {
            $('#kelas1').modal('hide');
            $('#halamannya').html(html);
        },
        error: function() {
            alert("Error");
        },
    });
    return false;
});

$(".myForm4").submit(function() {

    $.ajax({
        type: "POST",
        url: "nilai.php",
        data: $(this).serialize(),
        beforeSend:function(){
             $('#alert3').text("Please Wait");
           },
        success: function(html) {
            $('#nilai').modal('hide');
            $('#halamannya').html(html);
        },
        error: function() {
            alert("Error");
        },
    });
    return false;
});

$(".myForm3").submit(function() {
    
    $.ajax({
        type: "POST",
        url: "siswa.php",
        data: $(this).serialize(),
        beforeSend:function(){
             $('#alert4').text("Please Wait");
           },
        success: function(html) {
            $('#siswa').modal('hide');
            $('#halamannya').html(html);
        },
        error: function() {
            alert("Error");
        },
    });
    return false;
});
$(".myForm8").submit(function() {

    $.ajax({
        type: "POST",
        url: "inputpoin.php",
        data: $(this).serialize(),
        beforeSend:function(){
             $('#alert5').text("Please Wait");
           },
        success:function(html) {
            $('#insert').modal('hide');
            $.post('setting.php',
                    function(html){
                        $("#halamannya").html(html);
                    }   
                );
        },
        error: function() {
            alert("Error");
        },
    });
    return false;
});
$(".myForm9").submit(function() {
    $.ajax({
        type: "POST",
        url: "inputadd.php",
        data: $(this).serialize(),
        beforeSend:function(){
             $('#alert9').text("Please Wait");
           },
        success:function(html) {
            $('#add').modal('hide');
            $.post('input.php',
                    {kelas:$('.submit').attr('id')},
                    function(html){
                        $("#halamannya").html(html);
                    }   
                );
        },
        error: function() {
            alert("Error");
        },
    });
    return false;
});
$(".myForm10").submit(function() {

    $.ajax({
        type: "POST",
        url: "inputupdate.php",
        data: $(this).serialize(),
        beforeSend:function(){
             $('#alert10').text("Please Wait");
           },
        success:function(html) {
            $('#edit').modal('hide');
            $.post('input.php',
                    {kelas:$('.submot').attr('id')},
                    function(html){
                        $("#halamannya").html(html);
                    }   
                );
        },
        error: function() {
            alert("Error");
        },
    });
    return false;
});

$(".myForm11").submit(function() {
    $.ajax({
        type: "POST",
        url: "inputhapus.php",
        data: $(this).serialize(),
        beforeSend:function(){
             $('#alert11').text("Please Wait");
           },
        success:function(html) {
            $('#hapus').modal('hide');
            $.post('input.php',
                    {kelas:$('.drop').attr('id')},
                    function(html){
                        $("#halamannya").html(html);
                    }   
                );
        },
        error: function() {
            alert("Error");
        },
    });
    return false;
});

$(".myForm5").submit(function() {
    $.ajax({
        type: "POST",
        url: "settingedit.php",
        data: $(this).serialize(),
        beforeSend:function(){
             $('#alert5').text("Please Wait");
           },
        success:function(html) {
            $('#update').modal('hide');
            $.post('setting.php',
                    function(html){
                        $("#halamannya").html(html);
                    }   
                );
        },
        error: function() {
            alert("Error");
        },
    });
    return false;
});
});