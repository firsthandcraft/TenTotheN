$(function(){
	// enter 금지
    $('input[type="text"]').keydown(function () {
        if (event.keyCode === 13) {
            event.preventDefault();
        }
    });
	/*체크된 값 가져오기  --오류 : check 해제가 안된다. 값을 가져오는것은 c태그로 
	const checkBB =$('input[name="m_agree"]').val();
	console.log("dd"+checkBB);
	if(checkBB=='Y'){
		$('input[name="m_agree"]').prop('checked', true);
		}else if(checkBB=='N'){
			$('input[name="m_agree"]').prop('checked', false);
		}
	$('#m_collect').on("change",function(){
			
			if($('input[name="m_agree"]').prop('checked', true)){
			$('input[name="m_agree"]').val('Y')
				
			}else{$('input[name="m_agree"]').val('N');}
	});*/
    //비밀번호 보이기 
	$('.pwIcon').click(function(){
		$('.pwIcon').toggleClass('on')
		if($('.pwIcon').hasClass('on')){
		 $('.pwIcon').text('visibility_off');
		 $('#m_pwd').attr("type","text");
	 	}else{
		  $('.pwIcon').text('visibility');
		  $('#m_pwd').attr("type","password");
	 	}
	});
	//문자열 나누기 address
	const add = $('input[name="m_address"]').val();
	console.log(add);
	var addSplit = add.split('-');
    	//console.log(addSplit);
    	//console.log(addSplit[0]);
	$('input[name="m_zipcode"]').val(addSplit[0]);
	$('input[name="m_addressBasic"]').val(addSplit[1]);
	$('input[name="m_addressDetail"]').val(addSplit[2]);
	
	//문자열 나누기  tel
	const tel = $('input[name="m_tel"]').val();
	var telSplit = tel.split('-');
	$('input[name="tel01"]').val(telSplit[0]);
	$('input[name="tel02"]').val(telSplit[1]);
	$('input[name="tel03"]').val(telSplit[2]);
	
	$(".editBtn").on("click",function() {
		const m_pwd = $("#m_pwd").val();
		const m_name = $("#m_name").val();
		const m_email = $("#m_email").val();
		const m_zipcode = $("#sample6_postcode").val();
		const m_addressDetail = $("#sample6_address").val();
		const tel01 = $("#tel01").val();
		const tel02 = $("#tel02").val();
		const tel03 = $("#tel03").val();
		const telNum2= isNaN(tel02);
		const telNum3= isNaN(tel03);

			if (m_pwd  == "" || m_pwd  == null) {
				alert("비밀번호를 입력하세요.");
				return false;
			} if (m_name== "" || m_name == null) {
				alert("이름을 입력하세요.");
				return false;
			} if (m_email == "" || m_email == null) {
				alert("이메일을 입력하세요.");
				return false;
			}if (m_zipcode == "" || m_zipcode == null) {
				alert("주소를 입력하세요.");
				return false;
			}if (m_addressDetail == "" || m_addressDetail == null) {
				alert("상세주소를 입력하세요.");
				return false;
			} if(tel01&tel02&tel03 == "" ||tel01&tel02&tel03 == null ){
				alert("전화번호를 입력하세요.");
				return false;
			} if(!m_email.includes('@')){
		 		alert=" 잘못된 이메일 주소입니다. example@email.com 형식으로 입력되었는지 확인하세요.";
				return false;
			} if(telNum2){
		        alert(" 전화번호에 숫자를 입력해주세요");
		        return false;
		    } if(telNum3){
		        alert(" 전화번호에 숫자를 입력해주세요");
		        return false;
		    } else {
				const phone = $("#tel01").val()+"-"+$("#tel02").val()+"-"+$("#tel03").val();
				const address = $("#sample6_postcode").val()+"-"+$("#sample6_address").val()+"-"+$("#sample6_detailAddress").val();				
				$("#m_tel").val(phone);
				$("#m_address").val(address);
				/*
				console.log("------------------");
				console.log($("#m_tel").val()+"m_tel");
				console.log($("#m_type").val()+"m_type");
				console.log($("#m_id").val()+"m_id");
				console.log($("#m_pwd").val()+"m_pwd");
				console.log($("#m_name").val()+"m_name");
				console.log($("#m_email").val()+"m_email");
				console.log($("#m_birth").val()+"m_birth");
				console.log($("#m_address").val()+"m_address");
				console.log($("#m_img").val()+"m_img");
				console.log($("#m_instagram").val()+"m_instagram");
				console.log($("#m_homepage").val()+"m_homepage");
				console.log($("#m_cv").val()+"m_cv");
				console.log($("#m_agree").val()+"m_agree");
				*/ 
				$('.editForm').submit();
			}
	});

});
