$(document).ready(function(){
    $("#tambah_jenissurat").on("click", function(){
        $.ajax({
            url: "/update-jenis",
            method: 'POST',
            data: {user_id: $("#jenis_surat").attr("user-id"), input: $("#jenis_surat").val()},
            success: function(data){
                   let no  = $(".total").attr("total");
                   const now = new Date().toLocaleString('en-GB', { timeZone: 'Asia/Jakarta' });
                   const [date, time] = now.split(', ');
                   const [day, month, year] = date.split('/');
                   const formattedDate = `${year}-${month.padStart(2, '0')}-${day.padStart(2, '0')} ${time}`;
                   
                   let newRow = "<tr class='jenis-"+ data +"'>" +
                    "<td>" + no + "</td>" +
                    "<td><span class='badge rounded-pill text-bg-primary'>" + $("#jenis_surat").val() + "</span></td>" +
                    "<td><span class='badge rounded-pill text-bg-secondary'>" + formattedDate + "</span></td>" +
                    "<td><button type='button' id-jenissurat='" + data +  "' class='new-delete-jenissurat btn btn-outline-primary'>Hapus</button></td>" +
                    "</tr>";
                    $("table").append(newRow);

                    $(".total").attr("total", parseInt(no) + 1);
                    window.location.reload();
            }
        });

    });

    function updateNoUrut() {
        $('.no-urut').each(function(index) {
          $(this).text(index + 1);
        });
      }

    $(".delete-jenissurat").on("click", function(btn){
        let id       = $(this).attr("id-jenissurat");
        let trremove = $(".jenis-" + id);
        $.ajax({
            url: "del-categori",
            method: "POST",
            data: {idcategori: id},
            success: function(data){
                trremove.remove()
                updateNoUrut();
            }
        })
    });

    $(document).on("click", ".new-delete-jenissurat", function(btn) {
        let id       = $(this).attr("id-jenissurat");
        let trremove = $(".jenis-" + id);
        $.ajax({
            url: "del-categori",
            method: "POST",
            data: {idcategori: id},
            success: function(data){
                trremove.remove()
                updateNoUrut();
            }
        })
    });

});