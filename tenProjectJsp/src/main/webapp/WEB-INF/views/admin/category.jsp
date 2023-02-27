<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>category admin</title>
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
<header id="adminHeader"><c:import url="../common/headerAdmin.jsp"></c:import></header>

<main>
        <div class="box">
            <div class="categoryWrap">
                <p class="title">상품 분류</p>
                <form action="${pageContext.request.contextPath}/admin/categorySearch"method="get">
                    <input type="text" placeholder="분류명" name="c_name">
                    <button><span class="material-symbols-outlined searchBtn">search</span></button>
                </form>
            </div>
          <div class="btnWrap">
          	 	<a class="addBtn" href="#"><span class="material-symbols-outlined">add</span>등록</a>
                <button type="button" class="deleteBtn" disabled><span class="material-symbols-outlined">delete</span>삭제</button>
          </div>
          	<form id="categoryForm" action="${pageContext.request.contextPath}/admin/categoryDelete" method="post">
          	<table class="tableList">
                <thead>
                    <tr>
                        <th><input type="checkbox" class="allCheck"></th>
                        <th>번호</th>
                        <th>분류명</th>
                        <th>표시여부</th>
                        <th>접근권한</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
           		<c:forEach var="c" items="${list}" varStatus="status">
					  <tr>
                        <td><input type="checkbox"></td>
                        <td>${c.c_idx}</td>
                        <td><input type="text" value="${c.c_name}"name="c_name" readonly></td>
                        <td class="displayBtn">
                        	<c:if test="${c.c_display=='on'}">
                        		<span>Y</span>
                        	 	<input type="hidden" name="c_display" checked>
                        	</c:if>
                        	<c:if test="${c.c_display!='on'}">
                        		<span>N</span>
                        	 	<input type="hidden" name="c_display" value="" >
                        	</c:if>
                        </td>
                        <td>
                            <select  name="c_ageLimit" id="" disabled>
                                <option value="0"<c:if test="${c.c_ageLimit=='0'}">selected</c:if> >전연령</option>
                                <option value="15"<c:if test="${c.c_ageLimit=='15'}">selected</c:if> >만15세</option>
                                <option value="19"<c:if test="${c.c_ageLimit=='19'}">selected</c:if> >만19세</option>
                            </select>
                        </td>
                        <td>
                        <button type="button" class="deleteBtn"><span class="material-symbols-outlined">delete</span></button>
                        <button type="button" class="editBtn"><span class="material-symbols-outlined">edit</span></button>
                        <button type="button" class="saveBtn"><span class="material-symbols-outlined">save</span></button>
                        <button type="reset" class="resetBtn"><span class="material-symbols-outlined">restart_alt</span></button>
                        </td>
                    </tr>
				</c:forEach>
                </tbody>
            </table>
              <input type="hidden" name="c_idx" value="" >
          	</form>
        </div>
        <div class="addCategory">
            <div class="addCWrap">
                <form class="categoryAddForm" name="categoryAddForm"action="${pageContext.request.contextPath}/admin/categoryAdd" method="post">
                    <ul>
                        <li class="title addTitle">분류 추가 <a class="addClose" href="#"><span class="material-symbols-outlined searchBtn">close</span></a> </li>
                        <li><label>상품명<input type="text"name="c_name" placeholder="분류명"></label></li>
                        <li>
                            <label>표시여부 <input type="checkbox" name="c_display"></label> 
                        </li>
                        <li>
                            <label>접근권한
                                <select name="c_ageLimit">
                                    <option value="0">전연령</option>
                                    <option value="15">만15세</option>
                                    <option value="19">만19세</option>
                                </select>
                            </label>
                        </li>
                        <li>
                            <button class="insertBtn" type="submit">추가</button>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </main>
</body>
<script>
$(function(){
	//수정 
	$('.saveBtn').on("click",function(){
	    var cIdx= $(this).parents("tr").find('td:nth-child(2)').text();
	    var cName= $(this).parents("tr").find('input[name="c_name"]').val();
	    var cAgeLimit= $(this).parents("tr").find('select[name="c_ageLimit"]').val();
	    var cDisplay;
	   var displayCheck = $(this).parents("tr").find('.displayBtn input');
	    if(displayCheck.is(':checked')){
	    	//console.log("check");
	    	cDisplay="on" ;
	    }else{
	    	//console.log("nnnn");
	    	cDisplay="none";
	    }	    
	    var flag = confirm("수정하시겠습니까?");
	    if(flag){
	    	//ajax
			 $.ajax({
			     url:'${pageContext.request.contextPath}/admin/categoryEdit',
			     data:{
			    	 c_idx : cIdx,
			    	 c_name : cName,
			    	 c_display : cDisplay,
			    	 c_ageLimit : cAgeLimit
			     },
			     type:'post',
			     success:function(){
			        // console.log("ajax ok");
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
	$('.btnWrap button').on("click",function(){
		var categoryArr =[];
		var idxCheck = $("td:first-child input[type='checkbox']");
		for (var i = 0; i < idxCheck.length; i++) {
			if ($("td:first-child input[type='checkbox']:eq(" + i + ")").is(":checked")){
				categoryArr.push($(".tableList").children("tbody").children().eq(i).find('td:nth-child(2)').text());
			//	console.log($(".tableList").children("tbody").children().eq(i).find('.p_idx').text());
			}
		}
		// console.log($("td:first-child input[type='checkbox']:eq(0)").is(":checked"));
		//console.log(categoryArr);
		//testList = categoryArr;
		var flag = confirm("삭제하시겠습니까?");
		if(flag){
			//ajax
			 $.ajax({
			     url:'${pageContext.request.contextPath}/admin/categoryDeleteAll',
			     data:{
			    	 'c_idx' : categoryArr,
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
	
});
</script>
</html>