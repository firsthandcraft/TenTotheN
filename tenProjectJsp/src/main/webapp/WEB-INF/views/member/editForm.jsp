<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 <!-- 공통 -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/footer.css">
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/header.js"></script>
 <!-- 개별 -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/loginJoin.css">
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/login.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/editMember.js"></script>
  <!-- address -->
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/postcode.js"></script>
<title>my info</title>
<script>
$(function(){
	$('.m_outBtn').click(function(){
		const result = confirm('정말 탈퇴하시겠습니까?');
		 if(result) {
	       //yes
	       location.href =`${pageContext.request.contextPath}/member/out`;
	    } else {
	        //no
	        return false;
	    }
	});
});
</script>
</head>
<body>
<header id="headerUser"><c:import url="../common/header.jsp"></c:import></header>

<main>
<%-- <form action="${pageContext.request.contextPath }/member/edit"
method="post">
id:<input type="text" name="id" value="${m.id }" readonly><br/>
pwd:<input type="text" name="pwd" value="${m.pwd }" ><br/>
name:<input type="text" name="name" value="${m.name }" ><br/>
tel:<input type="text" name="tel" value="${m.tel }" ><br/>
address:<input type="text" name="address" value="${m.address }" ><br/>
type:
<c:choose>
	<c:when test="${m.type==1 }">구매자</c:when>
	<c:when test="${m.type==2 }">판매자</c:when>
	<c:when test="${m.type==3 }">관리자</c:when>
	<c:otherwise>잘못된 type</c:otherwise>
</c:choose>
<br>
<input type="reset" value="취소"/>
<input type="submit" value="수정"/>
</form> --%>
	<div class="formWrap">
         <form class="editForm" action="${pageContext.request.contextPath}/member/edit"method="post">
             <ul class="inputList">
                 <li>
                     <label class="inputLable">
                         <input type="text" name="m_id" id="m_id" value="${m.m_id}" readonly>
                         <span id="idResult"></span>
                     </label>
                 </li>
                 <li>
                     <label class="inputLable">
                         <input type="password" name="m_pwd" id="m_pwd"placeholder="PASSWORD"value="${m.m_pwd}">
                         <span class="material-symbols-outlined pwIcon show">visibility</span>
                     </label>
                 </li>
                 <li>
                     <label class="inputLable">
                         <input type="text" name="m_name" id="m_name" placeholder="NAME" value="${m.m_name}">
                         <span class="material-symbols-outlined resetBtn">close</span>
                     </label>
                 </li>
                 <li>
                     <label class="inputLable">
                         <input type="email" name="m_email" id="m_email" placeholder="EMAIL" value="${m.m_email}">
                         <span class="material-symbols-outlined resetBtn">close</span>
                     </label>
                 </li>
                 <li>
                     <label class="inputLable">
                         <input type="date" name="m_birth" id="m_birth"  max="1900-01-01" min="2023-12-31" value="${m.m_birth}" readonly>
                         <span class="material-symbols-outlined resetBtn">close</span>
                     </label>
                 </li>
                 <li class="postCodeWrap">
                     <label class="inputLable">
                         <!-- 우편번호 -->
                         <input type="text"  name="m_zipcode" id="sample6_postcode" readonly placeholder="POSTCODE">
                     </label>
                     <button class="addressPostNum" type="button" id="postcode" onclick="sample6_execDaumPostcode()">주소찾기</button>                      
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
                     <input type="hidden" name="m_address" id="m_address" value="${m.m_address}" />
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
                         <input type="text" name="tel02" id="tel02" placeholder="TEL" maxlength="4">
                     </label>
                     <label class="inputLable">
                         <input type="text" name="tel03"id="tel03" placeholder="TEL" maxlength="4">
                     </label>
                     <input type="hidden" name="m_tel" id="m_tel" value="${m.m_tel}">
                 </li>
		<!--  seller-->
		<c:choose>
			<c:when test="${sessionScope.m_type =='buyer'}">
	            <li class="sellerView hide">
             		<label class="inputLable profileImg">
             		PROFILE IMG
                         <input type="hidden" name="m_img" id="m_img"value="none">
                     </label>
             	</li>
                 <li class="sellerView hide">
             		<label class="inputLable">
                         <input type="hidden" name="m_instagram" id="m_instagram"value="none">
                     </label>
             	</li>
                 <li class="sellerView hide">
             		<label class="inputLable">
                         <input type="hidden" name="m_homepage" id="m_homepage" placeholder="HOMEPAGE URL"value="none">
                     </label>
             	</li>
                 <li class="sellerView hide">
                         <textarea rows="0" cols="0"name="m_cv" id="m_cv" placeholder="CV"></textarea>
             	</li>
			</c:when>
			<c:when test="${sessionScope.m_type =='seller'}">
				<li class="sellerView">
	             		<label class="inputLable profileImg">
	             		PROFILE IMG
	                         <input type="file" name="m_img" id="m_img"value="${m.m_img}">
	                     </label>
	             	</li>
	                 <li class="sellerView">
	             		<label class="inputLable">
	                         <input type="text" name="m_instagram" id="m_instagram" value="${m.m_instagram}">
	                     </label>
	             	</li>
	                 <li class="sellerView">
	             		<label class="inputLable">
	                         <input type="text" name="m_homepage" id="m_homepage" placeholder="HOMEPAGE URL" value="${m.m_homepage}">
	                     </label>
	             	</li>
	                 <li class="sellerView">
	                         <textarea rows="20" cols="40"name="m_cv" id="m_cv" placeholder="CV">${m.m_cv}</textarea>
	             	</li>			
	          </c:when>
			<c:otherwise>
			</c:otherwise>
		</c:choose>
		<!--            <li class="sellerView">
               		<label class="inputLable">
                           <input type="text" name="m_video" id="m_video" placeholder="CV_VIDEO BY YOUTUBE URL">
                    </label>
               	</li> -->
		<!--  seller-->
                 <li class="agreementWrap">
                     <label class="checkWrap">
                         <span>개인정보 수집 및 이용안내(선택)</span>
                          <c:if test="${m.m_agree=='on'}">
                        	 	<input type="checkbox" name="m_agree" id="m_collect" checked>
                          </c:if>
                          <c:if test="${m.m_agree!='on'}">
                        	 	<input type="checkbox" name="m_agree" id="m_collect">
                          </c:if>
              
                     </label>
                     <div class="agreementLink">
                         <a href="#">자세히 보기</a>
                     </div>
                 </li>
             </ul>
             <button class="editBtn" type="button">EDIT</button>
             <!-- type -->
             <input type="hidden" name="m_type"id="m_type"value="${m.m_type}" readonly/>
             <!--  login link-->
             <ul class="toLogin">
                 <li><a class="m_outBtn" type="button">회원탈퇴</a></li>
             </ul>
         </form>
	</div>
</main>
<footer id="footerUser"><c:import url="../common/footer.jsp"></c:import></footer>
</body>
</html>