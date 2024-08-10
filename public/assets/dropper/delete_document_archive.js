

$(".delete-document-archive").click(function(event){
    console.log($(event.target).attr("document-id"));
    $.ajax({
        url: "/delete-document-archive",
        method: "POST",
        data: {
            documentid: $(event.target).attr("document-id"),
        },
        success: function(){
            $("#"+$(event.target).attr("trinfo")).remove();
            $('.no-urut-'+$(event.target).attr("folderid")).each(function(index) {
                $(this).text(index + 1);
            });
        }
    });
});