<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
${sessionScope.id }님 로그인 상태
<a href="${pageContext.request.contextPath }/member/editForm">내정보수정</a>
<a href="${pageContext.request.contextPath }/member/logout">로그아웃</a>
<a href="${pageContext.request.contextPath }/member/out">탈퇴</a><br>
<c:set var="url">/seller/allList.do</c:set> 
<a href="${pageContext.request.contextPath}/seller/allList">/seller/allList</a>
<a href="${pageContext.request.contextPath}/seller/myList">/seller/myList</a>
<a href="${pageContext.request.contextPath}/member/adminPage">/member/adminPage</a>
 <c:if test="${not empty url }"> 
 	<c:set var="url" value="${url}"/> 
 </c:if> 
<c:if test="${sessionScope.type==1 }">
	<c:set var="path" value="/seller/allList"/>
</c:if>
<c:if test="${sessionScope.type==2 }">
	<c:set var="path" 
	value="/seller/myList"/>
</c:if>
<c:if test="${sessionScope.type==3 }">
	<c:set var="path" 
	value="/member/adminPage"/>
</c:if>
<c:import url="${path }"></c:import>
</body>
</html>



