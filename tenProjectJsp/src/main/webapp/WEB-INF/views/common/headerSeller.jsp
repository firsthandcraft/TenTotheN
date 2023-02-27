<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="headerWrap">
    <h3 class="logo"><a href="${pageContext.request.contextPath}/seller/dashBoard"><img src="${pageContext.request.contextPath}/static/img/textLogowh.svg" alt="logoimg"></a></h3>
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
                <li><a href="${pageContext.request.contextPath}/member/edit">회원정보수정</a></li>
                <li><a href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
            </ul>
        </div>
        <nav>
        <!-- 목록 -->
        <ul class="list">
            <li>
                <a href="${pageContext.request.contextPath}/seller/dashBoard"><span class="material-symbols-outlined">grid_view</span>
                    대시보드
                </a>
            </li>
            <li>
                <a href="#"><span class="material-symbols-outlined">inventory_2</span>
                    상품관리
                </a>
                <ul class="subList">
                    <li><a href="${pageContext.request.contextPath}/seller/productAdd">상품등록</a></li>
                    <li><a href="${pageContext.request.contextPath}/seller/productList">상품목록</a></li>
                    <li><a href="#">재고관리</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><span class="material-symbols-outlined">edit_square</span>
                    주문관리
                </a>
                <ul class="subList">
                    <li><a href="#">입금전 관리</a></li>
                    <li><a href="#">배송준비중 관리</a></li>
                    <li><a href="#">배송대기 관리</a></li>
                    <li><a href="#">배송완료 조회</a></li>
                    <li><a href="#">취소/교환/반품/환불</a></li>
                    <li><a href="#">현금영수증 관리</a></li>
                    <li><a href="#">거래내역 관리</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><span class="material-symbols-outlined">bar_chart</span>
                    통계
                </a>
            </li>
        </ul>
        </nav>
        <footer class="copy">Copyright &copy;2023  All rights reserved.</footer>

    </div>
</div>