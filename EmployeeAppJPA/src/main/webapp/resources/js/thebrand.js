/**
 * 
 */
$(document).ready(function() {

    $("#inforLink").click(function() {
        $.get({
            url: "information",
            success: function(response) {
                $(".slider").html(response);
            }
        });
    });


});