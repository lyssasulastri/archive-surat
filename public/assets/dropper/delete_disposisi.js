$(document).ready(function(){

    $(".delete-disposisi").click(function(){
        iddisposisi = $(this).attr("iddisposisi");

        $.ajax({
            url: "/delete-disposisi",
            method: "post",
            data: {
                getiddisposisi: iddisposisi
            },
            success: function(){
                window.location.reload();
            }
        });
    });

});