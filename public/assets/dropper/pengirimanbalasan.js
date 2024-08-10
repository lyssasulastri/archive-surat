

function proses_formbalasan(suratid){
    var document    = $("#document-balasan-"+suratid);
    var content     = $("#pengiriman-contentfile-"+suratid);
    var formData    = new FormData();
    var doclist;
    let dataid      = [];
    let namefile    = [];

    document.change(function(file){
        var files = file.target.files;
        doclist = Array.from(files);

        content.css("display", "grid");

        for(let i = 0; i < doclist.length; i++){
            let ItemRow = 
            '<div class="item item-'+  files[i].name +'">' +
                '<div class="icon"><i class="bx bx-file"></i></div>' +
                '<div class="progres">'+
                    '<div class="title">'+  files[i].name +'</div>' +
                    '<div class="progress progress-'+suratid+'" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">' +
                        '<div id="loading-'+suratid+'-'+ i +'" class="progress-bar loading-'+ suratid +'-'+ i +'" style="width: 0%">0%</div>' +
                    '</div>' +
                '</div>' +
            '</div>';

            $("#pengiriman-contentfile-"+suratid).append(ItemRow);

        }
    });

    $("#tambah-suratbalasan-"+suratid).on("click", function(){
        var judul       = $("#judul-"+suratid);
        var penerima    = $("#tujuan-"+suratid);
        var jenis_surat = $("#jenis_surat-"+suratid);
        var no_surat    = $("#no_surat-"+suratid);
        var perihal     = $("#perihal-"+suratid);
        var date_surat  = $("#date-surat-"+suratid);
        var asalsurat   = $("#asal-surat-"+suratid);
        var message     = $("#message-"+suratid);
        
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
                    nomor_surat: no_surat.val(),
                    perihal: perihal.val(),
                    tanggal_surat: date_surat.val(),
                    asal_surat: asalsurat.val(),
                    message: "",
                },
                success: function(datauserid){

                    if (doclist) {
                        for(let i = 0; i < doclist.length; i++){
                            formData.append("file", doclist[i]);
                            var no = [];
                            // Move Document
                            $.ajax({
                                xhr: function(){
                                    let xhr = new window.XMLHttpRequest();
                                    xhr.upload.addEventListener("progress", function(evt){
                                        if(evt.lengthComputable){
                                            var progreshtml = $(".loading-"+ suratid +"-" + i);
                                            // console.log(".loading-"+ suratid +"-" + i);
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
                                            id_surat: datauserid,
                                            penerima: penerima.val(),
                                        },
                                        success: function(){
                                            no.push(1);
                                            if(no.length == doclist.length){
                                                $.ajax({
                                                    url: "/update-surat-siap",
                                                    method: "POST",
                                                    data: {
                                                        id_surat: datauserid,
                                                    },
                                                    success: function()
                                                    {
                                                    }
                                                });
                                                alertviewhtml = '<div class="alert alert-success alert-dismissible fade show" role="alert">' +
                                                "<strong>Berhasil Terkirim</strong> Document Dan Surat Berhasil Terkirim." +
                                                '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>'+
                                                '</div>';
                                
                                                $(".box-alert-balasan-"+suratid).append(alertviewhtml);
                                            }
                                        }
                                    });
                                }
                            });
                        
                            for (var key of formData.keys()) {
                                formData.delete(key);
                            }
                        }  
                    } else{
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
                    }

                }
            });


        } else {
            $("#pesan-modal-"+suratid).show();
        }

    });
}