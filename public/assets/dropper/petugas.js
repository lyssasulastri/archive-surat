$(document).ready(function(){
    var dropdownItems = $(".dropdown-petugas");

    dropdownItems.on("click", function(button){
        $.ajax({
            url: '/update-user',
            method: 'POST',
            data: {user_id: $(button.target).attr("user-id"), rules: $(button.target).attr("value")},
            success: function(data){
                let update = $(".rules-content-" + $(button.target).attr("user-id"));
                update.html($(button.target).attr("value"));
            }
        });
    })

    $(".dropdown-item-block").on("click", function(button){
        $.ajax({
            url: "/block-user",
            method: "POST",
            data: {
                user_id: $(button.target).attr("user-id"),
            },
            success: function(data){
                window.location.reload();
            }
        })
    });

}); 