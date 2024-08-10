

$(".simpanarchive").on("click", function(event){

    if($("#"+$(event.target).attr("inputnameid")).val() != null){
        $.ajax({
            url: "/archive-upload-document",
            method: "POST",
            data: {
                docid: $(event.target).attr("document-id"),
                foldername: $("#"+$(event.target).attr("inputnameid")).val(),
            },
            success: function(data){
                let alert_archive = '<div class="alert-archive alert alert-success alert-dismissible fade show" role="alert">' +
                '<strong>Berhasil Disimpan</strong> Data Archive Anda Berhasil Disimpan'+
                '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>'+
                '</div>';
    
                $("."+$(event.target).attr("archive-body")).append(alert_archive);
            
            }
        });
    } else {
        let alert_archive = '<div class="alert-archive alert alert-warning alert-dismissible fade show" role="alert">' +
        '<strong>Proses Gagal!!</strong> Anda Perlu Membuat Folder Arsip Terlebih Dahulu'+
        '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>'+
        '</div>';

        $("."+$(event.target).attr("archive-body")).append(alert_archive);
    }

});