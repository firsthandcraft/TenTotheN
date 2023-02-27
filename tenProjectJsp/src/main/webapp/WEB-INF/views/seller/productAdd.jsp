<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>product add seller</title>
<!-- 공통 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/resetAdmin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/headerAdmin.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/headerAdmin.js"></script>
<!-- 개별 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/productSeller.css">

</head>
<body>
<header id=""><c:import url="../common/headerSeller.jsp"></c:import></header>
<main>
        <div class="box">
        	<p class="title">상품등록</p>
            <form action="${pageContext.request.contextPath}/seller/productAdd" method="post">
                <table class="enroll">
                    <tbody>
                        <tr>
                            <th>상품구분</th>
                            <td>
                            	<select name="p_category" id="">
		                            <option value="00">선택</option>
			                             <c:forEach var="c" items="${list}" varStatus="status">
											<option value="${c.c_idx}">${c.c_name}</option>
										</c:forEach>
                            	</select>
                            </td>
                        </tr>
                        <tr>
                            <th>상품명</th>
                            <td><input type="text" name="p_name" id=""></td>
                        </tr>
                        <tr>
                            <th>이미지</th>
                            <td><input type="file" name="p_img" id=""></td>
                        </tr>
                        <tr>
                            <th>상품설명</th>
                            <td><textarea name="p_content" id="" cols="50" rows="10"></textarea></td>
                        </tr>
                        <tr>
                            <th>진열여부</th>
                            <td><input type="hidden" name="p_display" id="" readonly>
                            	<span>상품 심사 후에 진열여부를 설정하실 수 있습니다.</span>
                            </td>
                        </tr>
                        <tr>
                            <th>수량</th>
                            <td>
                                <button type ="button" onclick="fnCalCount('p',this);">+</button>
                                <input type="number" name="p_quantity" id="">
                                <button type="button" onclick="fnCalCount('m', this);">-</button>
                            </td>
                        </tr>
                        <tr>
                            <th>가격</th>
                            <td><input type="text" name="p_price" id=""></td>
                        </tr>
                        <tr>
                            <th>구매제한</th>
                            <td>
                                <select name="p_ageLimit" id="">
                                    <option value="0">전연령</option>
                                    <option value="12">만12세</option>
                                    <option value="15">만15세</option>
                                    <option value="19">만19세</option>
                                </select>
                                
                            </td>
                        </tr>
                        <tr>
                            <!-- 이후 옵션 선택 3개 만들기 -->
                            <th>옵션</th>
                            <td>
                                <select name="p_option" id="">
                                    <option value="none">선택</option>
                                    <option value="포장">포장</option>
                                    <option value="액자">액자</option>
                                    <option value="etc">기타</option>
                                </select>
                                <label for="">옵션명 <input type="text" class="etcOption"></label>
                                <label for="">가격 <input type="text" name="p_optionPrice" id=""></label>
                            </td>
                        </tr>
                    </tbody>
                </table>
               <section><button class="addBtn" type="submit">등록</button></section>
               <input type="hidden"name="p_permission" value="심사중">
               <input type="hidden"name="p_permissionReason" value="">
            </form>
        </div>
    </main> 
</body>
<script>
//update 
$('.editBtn').on("click",function(){
//	$('#categoryForm').attr("action", "${pageContext.request.contextPath}/admin/categoryUpdate").submit();
});

//delete
//tableList는 테이블의 클래스 이름 
$('.tableList').on("click", "td:first-child input[type='checkbox']",function(){
	const categoryLength= $('.tableList tbody tr').length;
	var checked = $(this).is(":checked");
	var categoryArr =[];
	//for(var i=0;i<categoryLength;i++){
	if(checked){	
		/* var chekedbox= $(this).parents("tr").find('.c_idx').text();
		categoryArr.push(chekedbox);
		console.log(categoryArr); */
		
			// $(this).parents("tr").find('.c_name').text("dd");
			
				var chekedbox= $(this).parents("tr").find('.c_idx').text();
				categoryArr.push(chekedbox);
				$("td:first-child input[type='checkbox']").each(function() {

					
		});
	} 
	//}
	console.log(categoryArr);
/* 
	//category가져오기 
	$(document).on("change", "select[name='p_category']", function (e) {
        const p_category = 
            $("#" + $(e.target).attr("id") + " option:selected")
                .attr("id")
                .split("-")[0]
                .substr(1)
        ;
        categorySelectChangeHandler(e);
        removeCategoryList(category_type);
    }); */
/* 	$("select[name='p_category']").click(
			function() {
				var x = 0;
				cName = this.options[this.options.selectedIndex].value
				$.post("/admin/categoryName", {
					c_idx : cIdx,
					c_name : cName
				}).done(
						function(data) {
							var c = eval("(" + data + ")");
							for (i = 0; i < c.length; i++) {
								$("#s2").append(
										"<option value='"+c[i].id+"'>"
												+ c[i].name
												+ "</option>");
							}
						});
	}); */
});

</script>
</html>