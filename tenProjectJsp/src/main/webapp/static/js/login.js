$(function(){
	 $('.resetBtn').css('display','none');
	 $('.visibility').css('display','none');
   $('.inputLable input').on('input', function(){
            if($(".inputLable input[name=id]").val()==''){
                $('.inputLable').children('.resetBtn').css('display','none');
            }else{
                $('.inputLable').children('.resetBtn').show();
            }
            if($(".inputLable input[name=pwd]").val()==''){
                $('.inputLable').children('.visibility').css('display','none');
            }else{
                $('.inputLable').children('.visibility').show();
            }
        })
        $('.resetBtn').click(function(){
            $('.inputLable input[name=id]').val('');
            $('.inputLable').children('.resetBtn').css('display','none');
        });
       //
        $('.visibility').click(function(){
            $(this).toggleClass("vWatch");
            if($('.visibility').hasClass('vWatch')){
            $('input[name=pwd]').attr('type', 'text');  
            }else{
                $('input[name=pwd]').attr('type', 'password'); 
            }
        });

});