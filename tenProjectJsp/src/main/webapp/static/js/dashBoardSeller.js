$(function(){
	//   $('#footer_html').load('../a_common/footer.html');
	    /* 탭메뉴 스크립트 */
	$('.tabMenu li').eq(0).addClass('on');
	$('.return').hide();
	$('.ask').hide();
	
	$('.tabMenu li').click(function(){
		var index = $(this).index();
		$('.subAnswer>li').hide();
		$('.tabMenu li').removeClass('on'); 
		$('.subAnswer>li').eq(index).show();
		$('.tabMenu li').eq(index).addClass('on');
	 });
});