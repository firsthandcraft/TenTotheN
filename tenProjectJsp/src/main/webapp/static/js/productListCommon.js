$(function(){
    // 서브 네비
    $('.subMenu').css("display","none");
    $('.topMenu').mouseover(function(){
		$('.subMenu').stop().slideDown();
	})
    $('.topMenu').mouseleave(function(){
		$('.subMenu').stop().slideUp();
	})
    /* 탭메뉴 스크립트 */
	$('.tabMenu li').eq(0).addClass('on');
	$('.subAnswer>li:last-child').css("display","none");
	$('.tabMenu li').click(function(){
		var index = $(this).index();
		$('.subAnswer>li').hide();
		$('.subAnswer li').removeClass('on'); 
		$('.subAnswer>li').eq(index).show();
		$('.subAnswer li').eq(index).addClass('on');
	 });
	 //수량 카운트 
	/* $('input[name="o_quantity"]')
	
	function fnCalCount(type, this){
	    var  o_quantity= $(this).parents("td").find("input[name='o_quantity']");
	    var oCount = Number(o_quantity.val());
	    //재고 수량 
	    var qCount = Number($("input[name='p_quantity']").val());
	    
    if(type=='p'){
        if(oCount < qCount) $input.val(Number(tCount)+1);
        
    }else{
        if(oCount >0) $input.val(Number(tCount)-1);    
        }
	}
	 
	 
	 */
});

