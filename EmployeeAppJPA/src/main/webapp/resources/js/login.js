$(document).ready(function(){
    $('#eye').click(function(){
        $(this).toggleClass('open');
       $(this).children('i').toggleClass('ti-more ti-eye');
       if($(this).hasClass('open')){
            $(this).prev().attr('type' ,'text');
       }else{
        $(this).prev().attr('type' , 'password');
       }

    });
    
});