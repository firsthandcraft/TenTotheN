$(function(){
    $('.navMenu').mouseover(function(){
		$('.subnav').stop().slideDown();
	})
    $('.navMenu').mouseleave(function(){
		$('.subnav').stop().slideUp();
	})
});