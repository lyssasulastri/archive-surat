$(document).ready(function(){
    $(".notifikasi-card").on("click", function(event){
        $.ajax({
            url: "/update-read-notifikasi",
            method: "POST",
            data: {
                notifikasiid: $(".notifikasi-card").attr("notifikasi-id"),
            },
            success: function(event){
                window.location.href = $(".notifikasi-card").attr("base-url");
            }
        }); 
    });


    $(".bersihkansemua").on("click", function(event){
        console.log($(this).attr("user-id"));
        $.ajax({
            url: "/bersihkan-notifikasi",
            method: "POST",
            data: {
                userid: $(this).attr("user-id"),
            },
            success: function(event){
                location.reload();
            }
        }); 
    });

    $(".bacasemua").on("click", function(event){
        $.ajax({
            url: "/update-read-all",
            method: "POST",
            data: {
                userid: $(this).attr("user-id"),
            },
            success: function(event){
            }
        });  
    });

    if($(".notification-count").text() != ""){
    
    }

});