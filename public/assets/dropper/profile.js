$(document).ready(function(){
    var inputfiles = $("#profile");
    var preview    = $("#img-preview");
    var modal      = $("#modal-preview");
    var btnremove  = $("btn-remove");

    var cropper;

    inputfiles.change(function(event){
        var files = event.target.files;
        var done = function(data){
            preview.attr("src", data);
            modal.modal("show");
        }

        if(files && files.length > 0){
            var reader = new FileReader();
            reader.readAsDataURL(files[0]);
            reader.onload = function(data){
                done(data.target.result);
            }
        }
    });

    modal.on('shown.bs.modal', function(){
        cropper = new Cropper(preview.get(0),{
            dragMode: 'move',
            aspectRatio: 3/3,
            autoCropArea: 0.65,
            restore: true,
            guides: true,
            center: true,
            highlight: true,
            cropBoxMovable: true,
            cropBoxResizable: false, 
            toggleDragModeOnDblclick: false,
            preview: '.img-preview'
        });
    }).on("hidden.bs.modal", function(){
        cropper.destroy();
    });

    $("#crop").click(function(){
        var canvas = cropper.getCroppedCanvas({
            width: 500,
            height: 500
        });

        var post = function(imghash){
            $.ajax({
                    xhr: function(){
                        let xhr = new window.XMLHttpRequest();
                        xhr.upload.addEventListener("progress", function(evt){
                            if(evt.lengthComputable){
                                var progreshtml = $(".progress-bar");
                                var percentComplete = evt.loaded / evt.total;
                                percentComplete = parseInt(percentComplete * 100);
                                progreshtml.width(percentComplete + "%").html(percentComplete + "%");
                            }
                        }, false);
                        
                        return xhr;
                    },
                    url: '/update-profile',
                    method: 'POST',
                    data: {profile: imghash,user_id: inputfiles.attr("user-id"), old_name: inputfiles.attr("old-name")},
                    success: function(data){
                        $("#preview").attr("src",imghash);
                        $("#modal-preview").modal("hide");
                        $(".progress-bar").width("0%").html("0%");
                        inputfiles.attr("old-name", data["fileName"]);
                    }
                });            
        }

        canvas.toBlob(function(data){
            reader = new FileReader();
            reader.readAsDataURL(data);
            reader.onload = function(data){
                post(data.target.result);
            }
        });
    });

});