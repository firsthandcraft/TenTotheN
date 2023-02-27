$(function(){
	//option
	$('.p_option').on('change',function(){
		var etc=$("select[name='p_option']").val();
		if(etc=="etc"){
			$('.p_option label').show();
			$('.p_option label input').attr('type','text');
		}else{
			$('.p_option label').hide();
			$('.p_option label input').attr('type','hidden');
		}	
		console.log(etc);
	});
	
	//permission
	if($("select[name='p_permission']").val()=="반려"){
			$('.p_permissionReason').css("display","inline-block");
			$('.p_permissionReason input').attr('type','text');
		}else{
			$('.p_permissionReason').hide();
			$('.p_permissionReason input').attr('type','hidden');
			
		}	
		
	$('.p_permission').on('change',function(){
		var reason=$("select[name='p_permission']").val();
		if(reason=="반려"){
			$('.p_permissionReason').css("display","inline-block");
			$('.p_permissionReason input').attr('type','text');
		}else{
			$('.p_permissionReason').hide();
			$('.p_permissionReason input').attr('type','hidden');
		}	
	});
	//permission에서 반려 일 경우 reason 값 리셋 
	$('.addBtn').on('click',function(){
		var reason=$("select[name='p_permission']").val();
		if(reason!="반려"){
			$('input[name="p_permissionReason"]').val('');
		}	
		editProductForm.submit();
	});
});

   