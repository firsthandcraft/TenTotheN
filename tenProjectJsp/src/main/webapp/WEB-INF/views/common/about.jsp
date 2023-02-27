<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/footer.css">
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/header.js"></script>
<!--  -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}../static/css/about.css">
 <title>about</title>
</head>
<body>
<header id="headerUser"><c:import url="../common/header.jsp"></c:import></header>
        <main>
        <div class="aboutWrap">
            <h3>안녕하세요, 텐투디엔 입니다.</h3>
            <h3 class="second">좋아하는 작가의 작품을 10cm의 크기로 소장해보세요.</h3>
            
            <div class="contact">
             <h4>CONTACT</h4>
             <p>
             다양한 분야의 브랜드와의 협업을 환영합니다.<br>
             We welcome collaboration with brands in various fields.
             We would love to hear from you.</p>
             <!-- 메일 보내기 추가 -->
             <p>opaldust19@gmail.com</p>
            </div>
            <div class="studio">
             <h4>STUDIO</h4>
             <p>서울특별시 서대문구 홍연길 1층</p>
             <!-- https://apis.map.kakao.com/web/guide/#ready -->
             <div id="map" style="width:100%;height:350px;"></div>
            </div>
        </div>
    </main>
    <footer id="footerUser"><c:import url="../common/footer.jsp"></c:import></footer>
    
</body>
<!-- <script>
  $('#header_html').load('header.html');
  $('#footer_html').load('footer.html');
</script> -->
</html>