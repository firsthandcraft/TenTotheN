<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <!-- 공통 -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/footer.css">
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/header.js"></script>
 <!-- 개별 -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/loginJoin.css">
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/join.js"></script>
 <!-- address -->
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/postcode.js"></script>
 <title>join</title>
<script>
/* $(document).ready(function() {
	 $("#idCheck").click(function() {
		$.post( "/member/idCheck", { id: $("#id").val()} )
	    .done(function( data ) {
	    	$("#idResult").text(data);
	  	});
	}); 
	$("#join").click(function() {		
 		if($("#idResult").text().trim()=="사용가능"){
			$("form").submit();
		}else{
			alert("id 중복체크 먼저");
		} 

	});
}); */
</script>
</head>
<body>
<%-- 	<h3>회원가입</h3>
	<form action="${pageContext.request.contextPath}/member/join"
		method="post">
		id: <input type="text" name="id" id="id"> 
		<input type="button"	id="idCheck" value="id 중복체크"> 
			<span id="idResult"></span> <br>
		pwd:<input type="password" name="pwd"><br /> 
		name:<input	type="text" name="name"><br /> 
		tel:<input type="text"name="tel"><br /> 
		address:<input type="text"name="address"><br /> 
		type:<input type="radio" name="type" value="1">구매자
				<input type="radio" name="type" value="2">판매자
				<input type="radio" name="type" value="3">관리자<br/> 
		<input type="reset" value="취소">
		<input type="button" value="가입" id="join"> <br />
	</form> --%>
	<!--아이디 중복 확인 추가   -->
	<header id="header_html"><c:import url="../common/header.jsp"></c:import></header>
	
	<main>   
        <ul class="tabMenu">
            <li><a href="#">일반 회원가입</a></li>
            <li><a href="#">작가 회원가입</a></li>
        </ul>
        <div class="formWrap">
                <form class="joinForm" action="${pageContext.request.contextPath}/member/join"method="post">
                    <ul class="inputList">
                        <li>
                            <label class="inputLable">
                                <input type="text" name="m_id" id="m_id" placeholder="ID">
                                <span id="idResult"></span>
                            </label>
                        </li>
                        <li>
                            <label class="inputLable">
                                <input type="password" name="m_pwd" id="m_pwd"placeholder="PASSWORD">
                                <span class="material-symbols-outlined pwIcon show">visibility</span>
                            </label>
                        </li>
                        <li>
                            <label class="inputLable">
                                <input type="text" name="m_name" id="m_name" placeholder="NAME">
                                <span class="material-symbols-outlined resetBtn">close</span>
                            </label>
                        </li>
                        <li>
                            <label class="inputLable">
                                <input type="email" name="m_email" id="m_email" placeholder="EMAIL">
                                <span class="material-symbols-outlined resetBtn">close</span>
                            </label>
                        </li>
                        <li>
                            <label class="inputLable">
                                <input type="date" name="m_birth" id="m_birth"  max="1900-01-01" min="2023-12-31" >
                                <span class="material-symbols-outlined resetBtn">close</span>
                            </label>
                        </li>
                        <li class="postCodeWrap">
                            <label class="inputLable">
                                <!-- 우편번호 -->
                                <input type="text"  name="m_zipcode" id="sample6_postcode" readonly placeholder="POSTCODE">
                            </label>
                            <button class="addressPostBtn" type="button" id="postcode" onclick="sample6_execDaumPostcode()">주소찾기</button>                      
                        </li>
                        <li class="addressWrap" >
                            <label class="inputLable ">
                                <!--기본주소 -->
                                <input type="text" id="sample6_address"  name="m_addressBasic" readonly placeholder="ADDRESS">
							</label>
							<input type="text" id="sample6_extraAddress" placeholder="참고항목"readonly>
                        </li>
                        <li>
                            <label class="inputLable">
                                <!--나머지 주소 -->
                                <input type="text" name="m_addressDetail" id="sample6_detailAddress" placeholder="ADDRESS DETAIL">
                                <span class="material-symbols-outlined resetBtn">close</span>
                            </label>
                            <input type="hidden" name="m_address" id="m_address" readonly />
                        </li>
                        <li class="telWrap">
                            <select name="tel01" id="tel01">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            <label class="inputLable">
                                <input type="tel" name="tel02" id="tel02" placeholder="TEL" maxlength="4">
                            </label>
                            <label class="inputLable">
                                <input type="tel" name="tel03"id="tel03" placeholder="TEL" maxlength="4">
                            </label>
                            <input type="hidden" name="m_tel" id="m_tel">
                        </li>

                        <li class="sellerView">
                    		<label class="inputLable profileImg">
                    		PROFILE IMG
                                <input type="file" name="m_img" id="m_img">
                            </label>
                    	</li>
                        <li class="sellerView">
                    		<label class="inputLable">
                                <input type="text" name="m_instagram" id="m_instagram" placeholder="INSTAGRAM ID">
                            </label>
                    	</li>
                        <li class="sellerView">
                    		<label class="inputLable">
                                <input type="text" name="m_homepage" id="m_homepage" placeholder="HOMEPAGE URL">
                            </label>
                    	</li>
<!--                    <li class="sellerView">
                    		<label class="inputLable">
                                <input type="text" name="m_video" id="m_video" placeholder="CV_VIDEO BY YOUTUBE URL">
                            </label>
                    	</li> -->
                        <li class="sellerView">
                    		<textarea rows="20" cols="40"name="m_cv" id="m_cv" placeholder="CV"></textarea>
                    	</li>
                        <li class="agreementWrap">
                            <label class="checkWrap">
                                <span>이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다.</span>
                                <input type="checkbox" id="m_agreeAll" name="m_agreeAll" />
                            </label>
                            <label class="checkWrap">
                                <span>만 14세 이상입니다.</span>
                                <input type="checkbox"id="m_age"class="m_agree"/>        
                            </label>
                            <label class="checkWrap">
                                <span>이용약관 동의(필수)</span>
                                <input type="checkbox"id="m_agree"class="m_agree" />
                            </label>
                            <div class="agreementLink">
                                <a href="#">자세히 보기</a>
                            </div>
                            <label class="checkWrap">
                                <span>개인정보 수집 및 이용안내(선택)</span>
                                <input type="checkbox" id="m_collect"class="m_agree" name="m_agree" />
                            </label>
                            <div class="agreementLink">
                                <a href="#">자세히 보기</a>
                            </div>
                        </li>
                    </ul>
                    <button class="joinBtn" type="button" disabled>JOIN</button>
                    <!-- type -->
                    <input type="hidden" name="m_type"id="m_type"value="buyer"/>
                    <!--  login link-->
                    <ul class="toLogin">
                        <li><a href="${pageContext.request.contextPath}/member/loginForm">login</a></li>
                    </ul>
                </form>
        </div>
    </main>
   <footer id="footer_html"><c:import url="../common/footer.jsp"></c:import></footer>
</body>
</html>



