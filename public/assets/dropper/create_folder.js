
$("#createfolder_button").on("click", function(){

    if($("#foldername").val() != ""){
        $.ajax({
            url: "/create-folder",
            method: "POST",
            data: {
                foldername: $("#foldername").val(), 
                userid: $("#foldername").attr("user-id"),
            },
            success: function(){
                alertviewhtml = '<div class="alert alert-success alert-dismissible fade show" role="alert">' +
                "<strong>Create Berhasil</strong> Folder Berhasil Dibuat." +
                '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>'+
                '</div>';

                $(".box-alert").append(alertviewhtml);
            }
        });
    }


}); 