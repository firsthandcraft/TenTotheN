<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>product view admin</title>
<!-- 공통 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/resetAdmin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/headerAdmin.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/headerAdmin.js"></script>
<!-- 개별 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/productSeller.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/productEdit.js"></script>

</head>
<body>
<header id=""><c:import url="../common/headerAdmin.jsp"></c:import></header>
<main>
        <div class="box">
        	<p class="title">상품</p>
            <form id = "editProductForm"action="${pageContext.request.contextPath}/admin/productEdit" method="post">
                <table class="enroll">
                    <tbody>
                    	<tr>
                    		<th>상품번호</th>
                    		<td><c:out value="${p.p_idx}"/><input type="hidden" name="p_idx" value="${p.p_idx}"></td>
                    	</tr>
                        <tr>
                            <th>상품구분</th>
                            <td>${p.p_category}<input type="hidden" name="p_category" value="${p.p_category}"></td>
                        </tr>
                        <tr>
                            <th>상품명</th>
                            <td><input type="text" name="p_name" id=""value="<c:out value="${p.p_name}"/>"  readonly></td>
                        </tr>
                        <tr>
                            <th>이미지</th>
                            <td>
                            	<img alt="productimg" name="p_img" src="${p.p_img}">
                            </td>
                        </tr>
                        <tr>
                            <th>상품설명</th>
                            <td>${p.p_content}<input type="hidden" name="p_content"></td>
                        </tr>
                        <tr>
                            <th>진열여부</th>
                            <td>
                            	<input type="checkbox"name="p_display" <c:if test="${p.p_display=='N'}">selected</c:if>>
<!--                             <span>상품 심사 후에 진열여부를 설정하실 수 있습니다.</span>
 -->                        </td>
                        </tr>
                        <tr>
                            <th>수량</th>
                            <td>
<!--                                 <button type ="button" onclick="fnCalCount('p',this);">+</button>
 -->                                <input type="number" name="p_quantity" id=""value="${p.p_quantity}">
<!--                                 <button type="button" onclick="fnCalCount('m', this);">-</button>
 -->                        </td>
                        </tr>
                        <tr>
                            <th>가격</th>
                            <td><input type="text" name="p_price" id="" value="${p.p_price}"></td>
                        </tr>
                        <tr>
                            <th>구매제한</th>
                            <td>
                                <select name="p_ageLimit" id="">
                                    <option value="0"<c:if test="${p.p_ageLimit=='0'}">selected</c:if> >전연령</option>
                                    <option value="15"<c:if test="${p.p_ageLimit=='15'}">selected</c:if> >만 15세</option>
                                    <option value="19"<c:if test="${p.p_ageLimit=='19'}">selected</c:if> >만 19세</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <!-- 이후 옵션 선택 3개 만들기 -->
                            <th>옵션</th>
                            <td class="p_option">
                                <select name="p_option" id="">
                                    <option value="none"<c:if test="${p.p_option=='none'}">selected</c:if> >선택</option>
                                    <option value="포장" <c:if test="${p.p_option=='포장'}">selected</c:if> >포장</option>
                                    <option value="액자" <c:if test="${p.p_option=='액자'}">selected</c:if> >액자</option>
                                    <option value="etc" <c:if test="${p.p_option=='etc'}">selected</c:if> >기타</option>
                                </select>
                                <label for="">옵션명 <input type="hidden" class="etcOption"></label>
                                <label for="">가격 <input type="hidden" name="p_optionPrice" id=""></label>
                            </td>
                        </tr>
                        <tr>
                        	<th>허가 여부</th>
                        	<td class="p_permission">
                        		<select name=p_permission>
                            		<option value="심사중" <c:if test="${p.p_permission=='심사중'}">selected</c:if>>심사중</option>
                               		<option value="허가"<c:if test="${p.p_permission=='허가'}">selected</c:if> >허가</option>
                               		<option value="반려"<c:if test="${p.p_permission=='반려'}">selected</c:if> >반려</option>
                            	</select>
                            	 <div class="p_permissionReason">
                            	 	<span>사유 : </span> <input type="hidden" name="p_permissionReason" id="" value="${p.p_permissionReason}">
                            	 </div> 
                        	</td>
                        </tr>
                    </tbody>
                </table>
               <section class="submitBtnWrap">
                    <button><a class="listBtn" href="${pageContext.request.contextPath}/admin/productList">목록으로</a></button>
               		<button class="addBtn" type="button">수정</button>
               </section>
            </form>
        </div>
    </main> 
</body>

</html>