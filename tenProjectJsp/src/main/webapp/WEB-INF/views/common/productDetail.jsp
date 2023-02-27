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
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/productDetailCommon.css">
 <title>productList</title>
</head>
<body>
<header id="headerUser"><c:import url="../common/header.jsp"></c:import></header>
        <main>
        <div class="productWrap">
            <div class="pInfo">
               <form action="${pageContext.request.contextPath}/order/orderList" method="post">
                <section class="pImg"><img src="${p.p_img}" alt=""></section>
                <section class="description">
                    <div>
                        <p>product NAME <span>${p.p_name}</span></p>
                        <p>artist <span><a href="#"></a></span></p>
                        <p>year <span>@</span></p>
                        <p>price <span>@</span></p>
                        <p>info <span>혼합재료 mixed media, 90x60x20cm. Korea.</span></p>
                    </div>
                    <div class="buyForm">
                            <div class="quantity">
                                <p class="title">수량</p>
                                <div>
                                    <!-- +- 버튼으로 바꾸기  -->
                                    <div class="option_btn_tools">
										<button type ="button" onclick="fnCalCount('p',this);">+</button>
								        <input type="text" name="o_quantity" value="0" readonly="readonly"/>
								        <button type="button" onclick="fnCalCount('m', this);">-</button>
								        <input type="text"name="p_quantity" value="${p.p_quantity}">
                                    </div>
                                    <p><span>100,000</span>원</p>
                                </div>
                            </div>
                            <div class="total">
                                <p class="title">총 상품금액</p> 
                                <p><span>10000</span>원</p>
                            </div>
                            <div class="buyBtn">
                                <button>구매하기</button>
                                <button>장바구니</button>
                                <button>하트</button>
                            </div>
                    </div>
                </section>
                </form>
            </div>
            <div class="productWrap">
                <p>${p.p_content}
                결제 & 배송 안내

                    작품 배송은 배송 준비가 완료되면 구매자분들께 개별 연락드릴 예정입니다.
                    
                    배송은 미술작품의 특성상 평균 14일 가량 소요됩니다.
                    
                    <10의n승>의 모든 작품에 대한 배송비는 무료입니다.
                    
                    <br/>
                    
                    교환 & 환불 안내
                    
                    <10의 n승>은 작가가 작업을 지속할 수 있도록 제작과 유통이 동시에 가능하게 한 플랫폼입니다. 
                    
                    작품에 대해 단순 변심에 의한 교환, 반품, 환불은 불가합니다 .
                    
                    </p>
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