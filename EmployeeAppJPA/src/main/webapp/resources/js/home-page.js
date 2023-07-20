$(document).ready(function() {

    $("#addEmpLink").click(function() {
        $.get({
            /*url: "add-employee.jsp",*/
            url: "add-employee-page",
            success: function(response) {
                $(".container").html(response);
                $("#employeeName").focus();
            }
        });
    });

    $("#listEmpsLink").click(function() {
        $.get({
            /*url: "list-employees.jsp",*/
            url: "list-employees-page",
            success: function(response) {
                $(".container").html(response);
            }
        });
    });


});