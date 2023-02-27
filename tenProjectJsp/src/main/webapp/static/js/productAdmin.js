$(function(){
    
    // 체크박스 전체 선택
	$(".tableList").on("click", ".allCheck", function () {
		$('.btnWrap .deleteBtn').css('color','#999');
		$('.btnWrap .deleteBtn span').css('color','#999');
	  var checked = $(this).is(":checked");
	  if(checked){
	  	$(this).parents(".tableList").find('td:first-child input[type="checkbox"]').prop("checked", true);
	  	$('td:first-child input[type="checkbox"]').parents("tr").css('background','#f5f5f5');
	  	$('.btnWrap .deleteBtn').css('color','#000').attr('disabled',false);
	    $('.btnWrap .deleteBtn span').css('color','#000');
	  } else {
	  	$(this).parents(".tableList").find('td:first-child input[type="checkbox"]').prop("checked", false);
		$('.btnWrap .deleteBtn').css('color','#999').attr('disabled',true);
		$('.btnWrap .deleteBtn span').css('color','#999');	
		$('td:first-child input[type="checkbox"]').parents("tr").css('background','none');
	  }
	});
	// 체크박스 개별 선택
	$(".tableList").on("click", "td:first-child input[type='checkbox']", function() {
	    $('.btnWrap .deleteBtn').css('color','#999');
	    $('.btnWrap .deleteBtn span').css('color','#999');
	    var is_checked = true;
	    var checked = $(this).is(":checked");
	    $(".tableList td:first-child input[type='checkbox']").each(function(){
	        is_checked = is_checked && $(this).is(":checked");
	  		$('.btnWrap .deleteBtn').css('color','#000');
	    	$('.btnWrap .deleteBtn span').css('color','#000');
	    });
	    $(".allCheck").prop("checked", is_checked);
	    var deleteCheck=$("td:first-child input[type='checkbox']").is(":checked");
	    if(deleteCheck){
	  	$('.btnWrap .deleteBtn').css('color','#000').attr('disabled',false);
	    $('.btnWrap .deleteBtn span').css('color','#000');
	    $(this).parents("tr").css('background','#f5f5f5');
	  } else{
		$('.btnWrap .deleteBtn').css('color','#999').attr('disabled',true);
		$('.btnWrap .deleteBtn span').css('color','#999');
	  }if(checked==false){
		  $(this).parents("tr").css('background','none');
	  }
	});
});

   