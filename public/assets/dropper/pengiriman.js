

$(document).ready(function(){

    var document    = $("#document");
    var content     = $("#pengiriman-contentfile");
    var formData    = new FormData();
    var fileList;
    let dataid      = [];
    let namefile    = [];

    document.change(function(file){
        var files = file.target.files;
        fileList = Array.from(files);

        content.css("display", "grid");

        for(let i = 0; i < fileList.length; i++){
            let ItemRow = 
            '<div class="item item-'+  files[i].name +'">' +
                '<div class="icon"><i class="bx bx-file"></i></div>' +
                '<div class="progres">'+
                    '<div class="title">'+  files[i].name +'</div>' +
                    '<div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">' +
                        '<div class="progress-bar loading-'+ i +'" style="width: 0%">0%</div>' +
                    '</div>' +
                '</div>' +
            '</div>';

            $("#pengiriman-contentfile").append(ItemRow);

        }
    });

    $("#tambah").off('click').on("click", function(){
        var judul           = $("#judul");
        var penerima        = $("#tujuan");
        var jenis_surat     = $("#jenis_surat");
        var message         = $("#message");
        var nomor_surat     = $("#nomor_surat");
        var perihal         = $("#perihal");
        var asal_surat      = $("#asal_surat");
        var tanggal_surat   = $("#date-suratmasuk");

        if(penerima.val() != null && judul.val() != "" && message.val() != "" && jenis_surat.val() != "") {
            $.ajax({
                url: "/data-surat-masuk",
                method: "POST",
                data: {
                    // judul: judul.val(),
                    penerima: penerima.val(), 
                    jenis_surat: jenis_surat.val(), 
                    message: message.val(),
                    user_id: judul.attr("user-id"),
                    info_surat: judul.attr("info-surat"),
                    nomor_surat: nomor_surat.val(),
                    perihal: perihal.val(),
                    asal_surat: asal_surat.val(),
                    tanggal_surat: tanggal_surat.val()
                },
                success: function(suratid){
                    if (fileList) {
                        for(let i = 0; i < fileList.length; i++){
                            formData.append("file", fileList[i]);
                            var no = [];
                            // Move Document
                            $.ajax({
                                xhr: function(){
                                    let xhr = new window.XMLHttpRequest();
                                    xhr.upload.addEventListener("progress", function(evt){
                                        if(evt.lengthComputable){
                                            var progreshtml = $(".loading-" + i);
                                            var percentComplete = evt.loaded / evt.total;
                                            percentComplete = parseInt(percentComplete * 100);
                                            progreshtml.width(percentComplete + "%").html(percentComplete + "%");
                                            
                                        }
                                    }, false);
                                    
                                    return xhr;
                                },
                                url: "/upload-document",
                                method: "POST",
                                data: formData,
                                processData: false,
                                contentType: false,
                                success: function(namefile){
                                    $.ajax({
                                        url: "upload-data-document",
                                        method: "POST",
                                        data: {
                                            name_document: namefile,
                                            id_surat: suratid,
                                            penerima: penerima.val(),
                                        },
                                        success: function(){
                                            no.push(1);
                                            if(no.length == fileList.length){
                                                $.ajax({
                                                    url: "/update-surat-siap",
                                                    method: "POST",
                                                    data: {
                                                        id_surat: suratid,
                                                    },
                                                    success: function()
                                                    {
                                                    }
                                                });
                                                alertviewhtml = '<div class="alert alert-success alert-dismissible fade show" role="alert">' +
                                                "<strong>Berhasil Terkirim</strong> Document Dan Surat Berhasil Terkirim." +
                                                '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>'+
                                                '</div>';
                                
                                                $(".box-alert").append(alertviewhtml);
                                            }
                                        }
                                    });
                                }
                            });

                            
                            for (var key of formData.keys()) {
                                formData.delete(key);
                            }
                        }
                    } else {
                        $.ajax({
                            url: "/update-surat-siap",
                            method: "POST",
                            data: {
                                id_surat: suratid,
                            },
                            success: function()
                            {
                                alert("Berhasil Terkirim Tanpa File!");
                            }
                        });
                    }


                }
            });


        } else {
            $("#pesan-modal").show();
        }

    });

});

