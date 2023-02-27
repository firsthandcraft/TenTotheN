<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>product List admin</title>
<!-- 공통 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/resetAdmin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/headerAdmin.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/headerAdmin.js"></script>
<!-- 개별 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/categoryAdmin.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/categoryAdmin.js"></script>
</head>
<body>
<header id=""><c:import url="../common/headerAdmin.jsp"></c:import></header>
<main>
        <div class="box">
            <div class="categoryWrap">
                <p class="title">상품목록</p>
                <form action="${pageContext.request.contextPath}/admin/productSearch"method="get">
                    <input type="text"name="p_name">
                    <button><span class="material-symbols-outlined searchBtn">search</span></button>
                </form>
            </div>
            <div class="btnWrap">
                <button type="button" class="deleteBtn" disabled><span class="material-symbols-outlined">delete</span>삭제</button>
           </div>
          	<form id="productForm" action="${pageContext.request.contextPath}/admin/productDelete" method="post">
          	<table class="tableList">
                <thead>
                    <tr>
                        <th><input type="checkbox" class="allCheck"></th>
                         <th>상품번호</th>
                        <th>상품이미지</th>
                        <th>상품구분</th>
                        <th>상품명</th>
                        <th>재고</th>
                        <th>가격</th>
                        <th>진열여부</th>
                        <th>허가여부</th>
                    </tr>
                </thead>
                <tbody>
           		<c:forEach var="p" items="${list}" varStatus="status">
					  <tr>
                        <td><input type="checkbox"></td>
                        <td class="p_idx">${p.p_idx}</td>
                        <td><img alt="product-img" src="${p.p_img}"> </td>
                        <td> ${p.p_category} </td>
                        <td><a href="${pageContext.request.contextPath}/admin/productDetail?p_idx=${p.p_idx}">${p.p_name}</a></td>
                        <td>${p.p_quantity}</td>
                        <td>${p.p_price}</td>
                        <td class="displayBtn">
                        	<c:if test="${p.p_display=='on'}">
                        		<span>Y</span>
                        	 	<input type="hidden" name="p_display" checked>
                        	</c:if>
                        	<c:if test="${p.p_display!='on'}">
                        		<span>N</span>
                        	 	<input type="hidden" name="p_display" value="">
                        	</c:if>
                        </td>
                        <td>${p.p_permission}</td>
                    </tr>
				</c:forEach>
                </tbody>
            </table>
             <input type="hidden" name="c_idx" value="" >
          	</form>
          	<br>
        </div>
    </main> 
</body>
<script>
$('.deleteBtn').on("click",function(){
	var productArr =[];
	var idxCheck = $("td:first-child input[type='checkbox']");
	for (var i = 0; i < idxCheck.length; i++) {
		if ($("td:first-child input[type='checkbox']:eq(" + i + ")").is(":checked")){
			productArr.push($(".tableList").children("tbody").children().eq(i).find('td:nth-child(2)').text());
		}
	}
	var flag = confirm("삭제하시겠습니까?");
	if(flag){
		//ajax
		 $.ajax({
		     url:'${pageContext.request.contextPath}/admin/productDeleteAll',
		     data:{
		    	 'p_idx' : productArr,
		     },
		     type:'post',
		     traditional: true,
		     success:function(){
		         location.reload();
		     },
		     error:function(){
		         console.log("ajax error");
		     }
		 });
	} else{
		return;
	} 
});


</script>
</html>