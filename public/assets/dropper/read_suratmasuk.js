
    $(".suratmasuk").on("click",function(event){
        $.ajax({
            url: "/update-read",
            method: "POST",
            data: {
                suratid: $(this).attr("suratid")
            },
            success: function(data){
                console.log(data);
            }
        }); 
    });

    $(".modal-viewdocument").on("click", function(event){
        $.ajax({
            url: "/update-read",
            method: "POST",
            data: {
                suratid: $(this).attr("surat-id")
            },
            success: function(data){
                console.log(data);
            }
        }); 
    });

    $(".suratkeluar").on("click",function(event){
        $.ajax({
            url: "/update-read",
            method: "POST",
            data: {
                suratid: $(this).attr("suratid")
            },
            success: function(data){
                console.log(data);
            }
        }); 
    });

    $(".modal-dockeluar").on("click", function(event){
        $.ajax({
            url: "/update-read",
            method: "POST",
            data: {
                suratid: $(this).attr("surat-id")
            },
            success: function(data){
                console.log(data);
            }
        }); 
    });