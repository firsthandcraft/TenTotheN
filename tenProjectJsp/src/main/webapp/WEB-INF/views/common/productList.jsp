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
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/productListCommon.js"></script>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/productListCommon.css">
 <title>productList</title>
</head>
<body>
<header id="headerUser"><c:import url="../common/header.jsp"></c:import></header>
        <main>
        <div class="top">
            <ul class="tabMenu">
                <li><a href="#">작가</a></li>
                <li class="topMenu"><a href="#">작품</a>
                    <ul class="subMenu">
                     <c:forEach var="c" items="${cList}" varStatus="status">
                        <li><a href="#">${c.c_name}</a></li>
					</c:forEach>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="middle">
            <ul class="subAnswer">
                <li>
                    <ul class="artistList">
                        <c:forEach var="p" items="${mList}" varStatus="status">
							 <li>
		                       <a href="">
		                       		<img alt="product-img" src="${m.m_img}">
		                       		<span>${m.m_name}</span>
		                       </a>
		                    </li>
						</c:forEach>
                    </ul>
                </li>
                <li>
                    <ul class="productList">
                        <c:forEach var="p" items="${pList}" varStatus="status">
							 <li>
		                       <a href="${pageContext.request.contextPath}/common/productDetail?p_idx=${p.p_idx}">
		                       		<img alt="product-img" src="${p.p_img}">
		                       		<span>${p.p_name}</span>
		                       </a>
		                    </li>
						</c:forEach>
                    </ul>
                </li>
            </ul>
        </div>

    </main>
    <footer id="footerUser"><c:import url="../common/footer.jsp"></c:import></footer>
    
</body>

</html>