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
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/login.js"></script>
 <title>login</title>
</head>
<body>
<header id="header_html"><c:import url="../common/header.jsp"></c:import></header>
    <main>
        <div class="formWrap">
            <form class="loginForm" action="${pageContext.request.contextPath}/member/login"method="post">
                <ul class="inputList">
                    <li>
                        <label class="inputLable">
                            <input type="text" name="m_id" placeholder="ID">
                            <span class="material-symbols-outlined resetBtn">close</span>
                        </label>
                        
                    </li>
                    <li>
                        <label class="inputLable">
                            <span class="material-symbols-outlined visibility">visibility</span>
                            <input type="password" name="m_pwd" placeholder="PASSWORD">
                        </label>
                    </li>
                </ul>
                <button class="logInBtn" type="submit">Login</button>
                <ul class="toFind">
                    <li><p>Forgot your&nbsp;</p><a href="#"> id</a><p>? or&nbsp; </p><a href="#">Password?</a></li>
                    <li><a href="${pageContext.request.contextPath}/member/joinForm">Create Account</a></li>
                </ul>
            </form>
        </div>
    </main>
    <footer id="footer_html"><c:import url="../common/footer.jsp"></c:import></footer>
</body>
</html>