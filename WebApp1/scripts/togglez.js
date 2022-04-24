$(function () {
    $(".Ans").hide();

    $(".Quest").click(function () {
        $(this).siblings(".Answer").toggle(300);
    });

});