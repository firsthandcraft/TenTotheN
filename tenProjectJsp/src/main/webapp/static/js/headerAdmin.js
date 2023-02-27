 $(function(){
  // header menu nav
    $('.subList').addClass('off');
    $('.list>li>a').click(function(){
        if($(this).next('.subList').hasClass('off')){
            $(this).next('.subList').slideDown().removeClass('off');
        }else{
            $(this).next('.subList').slideUp().addClass('off');
        }
    });
    $('.profile').on('click',function(e){
        if($('.arrow_drop').hasClass('rotate')){
            $('.arrow_drop').removeClass('rotate');
            $('.arrow_drop').addClass('rotateReverse');
            $('.profileSubMenu').addClass('hide');
        }else{
            $('.arrow_drop').removeClass('rotateReverse');
            $('.arrow_drop').addClass('rotate');
            $('.profileSubMenu').removeClass('hide');
        }
        
    });
});