$(function(){
    //모달 창 
    //addClose
    $('.addBtn').on("click",function(){
        $('.addCategory').css('display','block')
    })
    $('.addClose').on("click",function(){
        $('.addCategory').css('display','none');
    });
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
	//수정
	$('.tableList tbody tr td:nth-child(3) input[type="text"]').css({"border":"none","text-align":"center","background":"none"});
	$('.editBtn').on("click",function(){
		$(this).parents('tr').find('.saveBtn').show();
		$(this).parents('tr').find('.resetBtn').show();
		$('.deleteBtn').hide();
		$('.editBtn').hide();
		$("td:first-child input[type='checkbox']").prop("checked", false).attr('disabled',true);
		$("th:first-child input[type='checkbox']").prop("checked", false).attr('disabled',true);
		$("tbody tr").css('background','none');
		
		$(this).parents('tr').find('td:nth-child(3) input').css({"border":"1px solid #999","text-align":"left","background":"#fff"}).attr('readonly',false);
		$(this).parents('tr').find('td:nth-child(4) input').attr('type',"checkbox");
		$(this).parents('tr').find('td:nth-child(4) span').hide();
		$(this).parents('tr').find('td:nth-child(5) select').attr('disabled',false);
	
		$('.tableList tbody tr').hover(function(){
				$(this).find('td:last-child .deleteBtn').css("display","none");
				$(this).find('td:last-child .editBtn').css("display","none");
		});
	});
	
	//resetbtn
	$('.resetBtn').on("click",function(){
		$(this).parents('tr').find('.saveBtn').hide();
		$(this).parents('tr').find('.resetBtn').hide();
		$('.deleteBtn').css("display","none");
		$('.editBtn').css("display","none");
		$("td:first-child input[type='checkbox']").prop("checked", false).attr('disabled',false);
		$("th:first-child input[type='checkbox']").prop("checked", false).attr('disabled',false);
		$("tbody tr").css('background','none');
		$(this).parents('tr').find('td:nth-child(3) input').css({"border":"none","text-align":"center","background":"none"}).attr('readonly',true);
		$(this).parents('tr').find('td:nth-child(4) input').attr('type',"hidden");
		$(this).parents('tr').find('td:nth-child(4) span').show();
		$(this).parents('tr').find('td:nth-child(5) select').attr('disabled',true);
		$('.tableList tbody tr').hover(function(){
			$(this).find('td:last-child .deleteBtn').css("display","inline-block");
			$(this).find('td:last-child .editBtn').css("display","inline-block");
		}, function(){
			$(this).find('td:last-child .deleteBtn').css("display","none");
			$(this).find('td:last-child .editBtn').css("display","none");
		});
		$('.btnWrap .deleteBtn').show().css("color","#999");
		$('.btnWrap .deleteBtn span').css("color","#999");
	});
	//hover
	$('.tableList tbody tr').hover(function(){
			$(this).find('td:last-child .deleteBtn').css("display","inline-block");
			$(this).find('td:last-child .editBtn').css("display","inline-block");
		
	}, function(){
		$(this).find('td:last-child .deleteBtn').css("display","none");
		$(this).find('td:last-child .editBtn').css("display","none");

	});
	//delete
	$('table .deleteBtn').on("click",function(){
		var cIdx= $(this).parents("tr").find('td:nth-child(2)').text();
		//$('#categoryForm').attr("action", "${pageContext.request.contextPath}/admin/categoryDelete");
	    $('#categoryForm input[name="c_idx"]').val(cIdx);
	    //console.log( $('#categoryForm input[name="c_idx"]').val());
	    //?c_idx="+cIdx+""
	    $('#categoryForm').submit(); 
	});
	
});

   