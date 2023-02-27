<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="headerWrap">
    <h3 class="logo"><a href="${pageContext.request.contextPath}/admin/dashBoard"><img src="${pageContext.request.contextPath}/static/img/textLogowh.svg" alt="logoimg"></a></h3>
    <div>
        <!-- 프로필 -->
        <a href="#" class="profile">
            <div class="profileImg">
                <c:if test="${sessionScope.m_img == null}">
              		<span class="material-symbols-outlined">account_circle</span>
                </c:if>
                 <c:if test="${sessionScope.m_img != null}">
                 	<div class="profileImgWrap">
                 	<img src="#" alt="">
                 	</div>
				</c:if>
            </div>
            <p class="profileName"><span>${sessionScope.m_id}</span>님 <span class="material-symbols-outlined down arrow_drop ">expand_more</span></p>
        </a>
        <!-- 프로필 소메뉴 -->
        <div class="profileSubMenu hide">
            <ul>
                <li><a href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
            </ul>
        </div>
        <nav>
        <!-- 목록 -->
        <ul class="list">
            <li>
                <a href="${pageContext.request.contextPath}/admin/dashBoard"><span class="material-symbols-outlined">grid_view</span>
                    대시보드
                </a>
            </li>
            <li>
                <a href="#"><span class="material-symbols-outlined">inventory_2</span>
                    상품관리
                </a>
                <ul class="subList">
                    <li><a href="${pageContext.request.contextPath}/admin/category">카테고리 등록</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/productList">상품 조회</a></li>
                    <li><a href="#">상품등록 허가</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><span class="material-symbols-outlined">edit_square</span>
                    주문관리
                </a>
                <ul class="subList">
                    <li><a href="#">주문 조회</a></li>
                    <li><a href="#">입금전 관리</a></li>
                    <li><a href="#">배송 출고 요청</a></li>
                    <li><a href="#">취소/교환/반품/환불</a></li>
                    <li><a href="#">월별 주문 통계</a></li>
                    <li><a href="#">거래내역 관리</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><span class="material-symbols-outlined">group</span>
                    고객관리
                </a>
                <ul class="subList">
                    <li><a href="#">회원 조회</a></li>
                    <li><a href="#">회원 탈퇴 관리</a></li>
                    <li><a href="#">휴먼 회원 관리</a></li>
                    <li><a href="#">회원 적립금 관리</a></li>
                    <li><a href="#">메세지 발송</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><span class="material-symbols-outlined">bar_chart</span>
                    게시판 
                </a>
               <ul class="subList">
                    <li><a href="#">공지사항</a></li>
                    <li><a href="#">운영게시판</a></li>
                    <li><a href="#">1:1게시판</a></li>
                    <li><a href="#">리뷰게시판</a></li>
                    <li><a href="#">자유게시판</a></li>
                </ul>
            <li>
                <a href="#"><span class="material-symbols-outlined">bar_chart</span>
                    프로모션 
                </a>
           		<ul class="subList">
                    <li><a href="#">쿠폰</a></li>
                    <li><a href="#">할인코드</a></li>
                </ul>
            <li>
                <a href="#"><span class="material-symbols-outlined">bar_chart</span>
                    사용자 
                </a>
                <ul class="subList">
                    <li><a href="#">모든 관리</a></li>
                    <li><a href="#">권한 바꾸기</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><span class="material-symbols-outlined">bar_chart</span>
                    팝업  
                </a>
            </li>
            <li>
                <a href="#"><span class="material-symbols-outlined">bar_chart</span>
                    매출정산   
                </a>
            </li>
        </ul>
        </nav>
        <footer class="copy">Copyright &copy;2023  All rights reserved.</footer>

    </div>
</div>