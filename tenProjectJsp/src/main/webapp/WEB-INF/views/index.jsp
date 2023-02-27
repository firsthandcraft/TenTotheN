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
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
 <title>Index</title>
</head>
<body>
<header id="headerUser"><c:import url="common/header.jsp"></c:import></header>
    <main>
        <div class="top">
            <section>
            </section>
        </div>
        <div class="middle">
            <ul class="artist">
                <li class="main_img"><img src="${pageContext.request.contextPath}/static/img/tenthen.gif" alt="logo img"></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/static/img/Artist01.jpg" alt="artistImg"></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/static/img/Artist01.jpg" alt="artistImg"></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/static/img/Artist01.jpg" alt="artistImg"></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/static/img/Artist01.jpg" alt="artistImg"></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/static/img/Artist01.jpg" alt="artistImg"></a></li>
              
            </ul>
        </div>

    </main>
    <footer id="footerUser"><c:import url="common/footer.jsp"></c:import></footer>
    
</body>
<!-- <script>
  $('#header_html').load('header.html');
  $('#footer_html').load('footer.html');
</script> -->
</html>