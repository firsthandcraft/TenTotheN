<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>주문내역</h3>
<table border="1" cellspacing="0">
<tr><th>제품명</th><th>주문수량</th><th>가격</th></tr>
<c:forEach var="o" items="${list }">
<tr>
<td>${o.p.name }</td><td>${o.quantity }</td><td>${o.p.price }</td>
</tr>
</c:forEach>
</table>
</body>
</html>