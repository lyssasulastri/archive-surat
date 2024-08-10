

$(".renameoldfolder").on("click", function(event){
    if($("#name_old_folder-"+$(this).attr("folderid")).val() != null){
        $.ajax({
            url: "/rename-folder",
            method: "POST",
            data: {
                folderid: $(this).attr("folderid"),
                new_name: $("#name_old_folder-" + $(this).attr("folderid")).val(),
            },
            success: function(event){
                let alert_archive = '<div class="alert-archive alert alert-success alert-dismissible fade show" role="alert">' +
                '<strong>Berhasil Rename</strong> Folder Berhasil Rename'+
                '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>'+
                '</div>';

                $(".alert-foldersetting").append(alert_archive);
            }
        });
    }
});

$(".deleteoldfolder").on("click", function(event){
    $.ajax({
        url: "/delete-foldername",
        method: "POST",
        data: {
            folderid: $(this).attr("folderid"),
        },
        success: function(){
            let alert_archive = '<div class="alert-archive alert alert-success alert-dismissible fade show" role="alert">' +
            '<strong>Berhasil Delete</strong> Folder Berhasil Di delete'+
            '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>'+
            '</div>';

            $(".alert-foldersetting").append(alert_archive); 
        }
    })
});