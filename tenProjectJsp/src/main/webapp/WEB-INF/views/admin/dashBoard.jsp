<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>dashBoard Admin</title>
<!-- 공통 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/resetAdmin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/headerAdmin.css">

<!-- 개별 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/dashBoard.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/dashBoardAdmin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/headerAdmin.js"></script>
</head>
<body>
	<header id="adminHeader"><c:import url="../common/headerAdmin.jsp"></c:import></header>
    <main>
        <div class="boardNotice box">
            <ul>
                <li class="title">공지사항</li>
                <li><a href="#">[공지] 어드민 주말 배포 안내adsfhjakfhalskjdfhalsfhalskhdfsalkjhfdklshdajslkhfasljkfdhsjklasdafshdjfkashdflsafhsafhjlasfhdlaskhfjkl</a></li>
                <li>2023.01.19</li>
            </ul>
        </div>
        <div class="box pManagement">
            <p class="title">상품관리</p>
            <ul>
                <li>판매중<span>n</span></li>
                <li>품절<span>n</span></li>
                <li>수정요청<span>n</span></li>
                <li>판매중지<span>n</span></li>
            </ul>
        </div>
        <ul class="gridWrap">
            <li class="left">
                <div class="box">
                    <p class="title">주문 / 배송 <span>최근 한달 기준</span></p>
                    <div class="chart"></div>
                    <ul>
                        <li>출고요청 <span>1</span></li>
                        <li>출고처리중<span>2</span></li>
                        <li>배송중 <span>3</span></li>
                        <li>배송완료 <span>3</span></li>
                        <li>구매확정 <span>2</span></li>
                    </ul>
                </div>
                <div class="box">
                    <p class="title">교환 / 환불 <span>최근 한달 기준</span></p>
                    <ul>
                        <li >교환요청 <span>1</span></li>
                        <li>환불요청 <span>1</span></li>
                        <li>교환 처리중 <span>1</span></li>
                        <li>환불 처리중<span>1</span></li>
                        <li>반품확인<span>1</span></li>
                    </ul>
                </div>
                <div class="box">
                    <p class="title">상품리뷰
                        <span><a href="#">더보기</a></span>
                    </p>
                    <ul class="reviewList">
                        <li>
                            <a href="#">
                                <span>2023.02.28</span>
                                <span>너무 아기자기하고 이쁩니다.dsafsajfasl;fjdas;kljasdfklasf</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>2023.02.28</span>
                                <span>너무 아기자기하고 이쁩니다.</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>2023.02.28</span>
                                <span>너무 아기자기하고 이쁩니다.</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>2023.02.28</span>
                                <span>너무 아기자기하고 이쁩니다.</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="right">
                <div class="box answer">
                    <p class="title">미답변 문의</p>
                    <ul class="tabMenu">
                        <li><a href="#">교환</a></li>
                        <li><a href="#">환불</a></li>
                        <li><a href="#">반품</a></li>
                    </ul>
                    <ul class="subAnswer">
                        <li class=" change">
                            <div>
                                <a href="#">
                                    <span>2023.03.23</span>
                                    <p>안녕하세요 , 상품을 받았는데 원하는 색상을 이 아니여서 교환 요청드립니다.</p>
                                </a>
                            </div>
                            <div>
                                <a href="#">
                                    <span>2023.03.23</span>
                                    <p>안녕하세요 , 상품을 받았는데 원하는 색상을 이 아니여서 
                                        교환 요청드립니다.</p>
                                </a>
                            </div>
                        </li>
                        <li class=" return">
                            <div>
                                <a href="#">
                                    <span>2023.03.23</span>
                                    <p>안녕하세요 , 상품을 받았는데 원하는 색상을 이 아니여서 
                                        환불 요청드립니다.</p>
                                </a>
                            </div>
                            <div>
                                <a href="#">
                                    <span>2023.03.23</span>
                                    <p>안녕하세요 , 상품을 받았는데 원하는 색상을 이 아니여서 
                                    환불 요청드립니다.</p>
                                </a>
                            </div>
                        </li>
                        <li class=" ask">
                            <div>
                                <a href="#">
                                    <span>2023.03.23</span>
                                    <p>안녕하세요 , 상품을 받았는데 원하는 색상을 이 아니여서 
                                        상품문의 요청드립니다.</p>
                                </a>
                            </div>
                            <div>
                                <a href="#">
                                    <span>2023.03.23</span>
                                    <p>안녕하세요 , 상품을 받았는데 원하는 색상을 이 아니여서 
                                        상품문의 요청드립니다.</p>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <a href="#" class="answerMore">클레임 문의 전체보기</a>
                </div>
            </li>
            </ul>
    </main>
</body>
</html>

