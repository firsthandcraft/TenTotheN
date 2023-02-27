<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/footer.css">
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/header.js"></script>
 
<title>mypage</title>
<style type="text/css">
.myMenu{margin:100px 0; padding:0 30%;display:flex;justify-content:center;flex-wrap:wrap;}
.myMenu li{width:30%;padding:10px;text-align:center;font-size:20px;font-weight:500;}
.myMenu li span{display:block;font-size:12px;}
</style>
</head>
<body>
<%-- ${sessionScope.m_id}님, 안녕하세요. --%>
<header id="header_html"><c:import url="../common/header.jsp"></c:import></header>
 <main>
 	<ul class="myMenu">
        <li><a href="#">Order<span>주문내역 조회</span></a></li>
        <li><a href="#">Cart <span>장바구니</span> </a></li>
        <li><a href="#">WishList <span>관심목록</span> </a></li>
        <li><a href="#">Review <span>리뷰</span> </a></li>
        <li><a href="${pageContext.request.contextPath}/member/edit">Profile<span>회원정보</span></a></li>
        <li><a href="#">Q&A <span>문의</span> </a></li>
    </ul>
</main>
<footer id="footer_html"><c:import url="../common/footer.jsp"></c:import></footer>
</body>
</html>



