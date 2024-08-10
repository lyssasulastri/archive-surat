


$("#checboxall").on("click", function(event){
    if(event.target.checked == true){
        for(let i = 0; i < $(".checkbox").length; i++ ){
            $(".checkbox")[i].checked = true;
        }
    } else {
        for(let i = 0; i < $(".checkbox").length; i++ ){
            $(".checkbox")[i].checked = false;
        }
    }
}); 


$("#hapusrowtable").on("click", function(event){
    for(let i = 0; i < $(".checkbox").length; i++){
        if($(".checkbox")[i].checked == true){
            $.ajax({
                url: "/delete-surat-surat",
                method: "POST",
                data: {
                    suratid: $(".checkbox")[i].value,
                },
                success: function(){
                    window.location.reload();
                }
            })
        }
    }
});

$("#hapusriwayat").on("click", function(event){
    for(let i = 0; i < $(".checkbox").length; i++){
        if($(".checkbox")[i].checked == true){
            $.ajax({
                url: "/delete-riwayat-surat",
                method: "POST",
                data: {
                    riwayatid: $(".checkbox")[i].value,
                },
                success: function(){
                    window.location.reload();
                }
            })
        }
    }
});