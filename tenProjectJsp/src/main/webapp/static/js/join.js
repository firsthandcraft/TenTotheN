$(function(){
	
	// enter 금지
    $('input[type="text"]').keydown(function () {
        if (event.keyCode === 13) {
            event.preventDefault();
        }
    });
	/*resetBTN */
	$('.resetBtn').css('display','none');
	
    /* 탭메뉴 스크립트 */
/*	$('.tabMenu li').eq(0).addClass('on');
	$('.joinWrap>li').eq(1).hide();
	$('.resetBtn').css('display','none');

	$('.tabMenu li').click(function(){
		var index = $(this).index();
		$('.joinWrap>li').hide();
		$('.tabMenu li').removeClass('on'); 
		$('.joinWrap>li').eq(index).show();
		$('.tabMenu li').eq(index).addClass('on');
	 });*/
	// 탭메뉴 회원가입 
	$('.sellerView').addClass('hide');
	$('.sellerView input').attr("type","hidden");
	$('.sellerView input').attr("value","none");
	$('.tabMenu li').eq(0).addClass('on');
	$('.tabMenu li').click(function(){
		$('.tabMenu li').removeClass('on'); 
		$(this).addClass('on');
		if($('.tabMenu li').eq(1).hasClass('on')){
			 $('.sellerView').removeClass('hide');
			 $('.sellerView input').attr("type","text");
			 $('.sellerView input[name="m_img"]').attr("type","file");
		   	 $('.sellerView input').attr("value",null);
		   	 $('.joinForm input[name="m_type"]').attr("value","seller");
		 }else{
			 $('.sellerView').addClass('hide');
			 $('.sellerView input').attr("type","hidden");
		     $('.sellerView input').attr("value","none");
		     $('.joinForm input[name="m_type"]').attr("value","buyer");
		 }
	 });
	//id
    $("#m_id").on("propertychange change keyup paste input blur", function () {
        const rule = /^[A-Za-z0-9]{4,12}$/; // id rule 정규식
        const id = $("#m_id").val();
        if (!rule.test(id)) {
            if ($("#m_id").val() == "") {
                $("#idResult").text("필수 정보입니다.");
            } else if (id.length < 4 || 12 < id.length) {
                $("#idResult").text("아이디는 4글자 이상 13글자 미만으로 입력해주세요.");
            } else if (!rule.test(/^[A-Za-z0-9]*$/)) {
                $("#idResult").text("아이디에 사용할 수 없는 문자가 있습니다.");
            }
            /* $("#user_id").focus(); */
            chkid = false;
            document.getElementById("idResult").classList.remove("success");
            document.getElementById("idResult").classList.add("message");
            $("#joinBtn").attr("disabled", true);
            // id 중복체크
        }/* else {
            $.ajax({
                url: "/member/idCheck",
                type: "post",
                data: { id },
                success: function (data) {
                    chkid = data.bool;
                    if (chkid) {
                        document.getElementById("idResult").classList.add("success");
                        document.getElementById("idResult").classList.remove("message");
                    } else {
                        document.getElementById("idResult").classList.remove("success");
                        document.getElementById("idResult").classList.add("message");
                    }
                    $("#idResult").text(data.str);

                    join();
                },
            });
        }
    //email
    $("#email_list").change(function () {
        if ($(this).val() != "") {
            document.getElementById("user_email2").readOnly = true;
        } else {
            document.getElementById("user_email2").readOnly = false;
        }
        document.getElementById("user_email2").value = document.getElementById("email_list").value;
        document.getElementById("user_email2").focus();
    });*/
	});
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
	// 체크박스 전체 선택
	$(".agreementWrap").on("click", "#m_agreeAll", function () {
	  var checked = $(this).is(":checked");
	
	  if(checked){
	  	$(this).parents(".agreementWrap").find('input').prop("checked", true);
	  } else {
	  	$(this).parents(".agreementWrap").find('input').prop("checked", false);
	  }
	});
	// 체크박스 개별 선택
	$(".agreementWrap").on("click", ".m_agree", function() {
	    var is_checked = true;
	    
	    $(".agreementWrap .m_agree").each(function(){
	        is_checked = is_checked && $(this).is(":checked");
	    });
	    
	    $("#m_agreeAll").prop("checked", is_checked);
	});
	//약관 체크 
	const agreements = {
	  termsOfService: false,
	  privacyPolicy: false,
	  allowPromotions: false,
	};
	$('#m_age').on("change",function(){
			agree_checked();
	});
	$('#m_agree').on("change",function(){
			agree_checked();
	});
	$('#m_agreeAll').on("change",function(){
			agree_checked();
	});
	function agree_checked(){
		
		if($('#m_age').is(':checked')&&$('#m_agree').is(':checked')){
			$(".joinBtn").css({
				border :"1px solid #fff",
				color: "#999"
			});
			$(".joinBtn").prop("disabled", false);
		} else{
			$(".joinBtn").prop("disabled", true);
			$(".joinBtn").css({
				border :"1px solid #222",
				color: "#222"
			});	
		}	
	}
	//checkbox value값 
	$('#m_collect').on("change",function(){
			if($('input[name="m_agree"]').prop('checked', true)){
				$('input[name="m_agree"]').val('Y');
			}else{$('input[name="m_agree"]').val('N');}
	});
	//공백체크 
	$(".joinBtn").on("click",function() {
		const m_id = $("#m_id").val();
		const m_pwd = $("#m_pwd").val();
		const m_name = $("#m_name").val();
		const m_email = $("#m_email").val();
		const m_birth = $("#m_birth").val();
		const m_zipcode = $("#sample6_postcode").val();
		const m_addressDetail = $("#sample6_address").val();
		const tel01 = $("#tel01").val();
		const tel02 = $("#tel02").val();
		const tel03 = $("#tel03").val();
		const telNum2= isNaN(tel02);
		const telNum3= isNaN(tel03);

			if (m_id == "" || m_id == null) {
				alert("아이디를 입력하세요.");
				return false;
			}
			if (m_pwd  == "" || m_pwd  == null) {
				alert("비밀번호를 입력하세요.");
				return false;
			}
			if (m_name== "" || m_name == null) {
				alert("이름을 입력하세요.");
				return false;
			} if (m_email == "" || m_email == null) {
				alert("이메일을 입력하세요.");
				return false;
			}if (m_birth == "" || m_birth == null) {
				alert("생일을 입력하세요.");
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
				//전화번호 , 주소 통합 
				//console.log($('#tel02').val());
				//console.log($('#tel03').val());
				const phone = $("#tel01").val()+"-"+$("#tel02").val()+"-"+$("#tel03").val();
				const address = $("#sample6_postcode").val()+"-"+$("#sample6_address").val()+"-"+$("#sample6_detailAddress").val();				
				$("#m_tel").val(phone);
				$("#m_address").val(address);
				
		/*		console.log("------------------");
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
				$('.joinForm').submit();
				
			}
	
				
	});
});
/*javascript
function checkSelectAll()  {
  // 전체 체크박스
  const checkboxes 
    = document.querySelectorAll('.m_agree');
  // 선택된 체크박스
  const checked 
    = document.querySelectorAll('input[name="m_agree"]:checked');
  // select all 체크박스
  const selectAll 
    = document.querySelector('#m_agreeAll');
  
  if(checkboxes.length === checked.length)  {
    selectAll.checked = true;
  }else {
    selectAll.checked = false;
  }
}
function checkSelectAll(selectAll)  {
  const checkboxes 
     = document.getElementsByName('m_agree');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked
  })*/

/*/생년월
userYear.onblur= function(){
	if(userYear.value==""){
		useremailCheck.classList.add('redLine');
		alertYear.innerHTML="생년월일을 입력해야합니다.";
		alertYear.classList.remove('hide');
	} else if(userYear.value !="") {
		useremailCheck.classList.remove('redLine');
		alertYear.classList.add('hide');
		const flag =isNaN(userYear.value);
		if(flag){
			useremailCheck.iclassList.add('redLine');
			alertYear.classList.remove('hide');
			userYear.value="";
			userYear.focus();
			return false;
		}
		if(userYear.value.length != 6){
			useremailCheck.classList.add('redLine');
			alertYear.innerHTML="생년월일 6자리를 입력하세요.";
			alertYear.classList.remove('hide');
		}
	}	
 }*/