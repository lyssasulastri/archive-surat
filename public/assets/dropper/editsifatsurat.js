$(document).ready(function(){

    $(".btn-submit-edit-sifat-surat").off('click').on('click', function(){
        $(".form-edit-sifat-surat").off('submit').on('submit', function(event){
            event.preventDefault();

            const formData      = new FormData(this);

            var sifatsuratid    = formData.get('sifatsuratid');
            var editsurat       = formData.get('edit-surat');


            $.ajax({
                url: "/edit-sifat-surat",
                method: "POST",
                data: {
                    sifatsuratid: sifatsuratid,
                    editsurat: editsurat,
                },
                success: function(data){
                    alert("berhasil Diedit");
                    window.location.reload();
                }
            });


        });
    });
})