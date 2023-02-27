<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="headerWrap">
   	<c:if test="${sessionScope.m_id == null}">
   		<h3 class="logo">
   	    	<a href="/"><img src="${pageContext.request.contextPath}/static/img/logowh.png" alt="logoimg"></a>
   		</h3>
   	</c:if>
   	<c:if test="${sessionScope.m_id != null}">
   		<c:choose>
			<c:when test="${sessionScope.m_type =='buyer'}">
				<h3 class="logo">
          			<a href="/"><img src="${pageContext.request.contextPath}/static/img/logowh.png" alt="logoimg"></a>
				</h3>
			</c:when>
			<c:when test="${sessionScope.m_type =='seller'}">
				<h3 class="textLogo">
          			 <a href="${pageContext.request.contextPath}/seller/dashBoard"><img src="${pageContext.request.contextPath}/static/img/textLogowh.svg" alt="logoimg"></a>
				</h3>
			</c:when>
			<c:when test="${sessionScope.m_type =='admin'}">
				<h3 class="textLogo">
                    <a href="/"><img src="${pageContext.request.contextPath}/static/img/textLogowh.svg" alt="logoimg"></a>
				</h3>
			</c:when>
		</c:choose>
   	</c:if>
    <nav>
        <ul class="navigation">
            <li><a href="${pageContext.request.contextPath}/common/about"><span class="material-symbols-outlined">satellite_alt</span></a></li>
            <li><a href="${pageContext.request.contextPath}/common/productList"><span class="material-symbols-outlined">capture</span></a></li>
            <li class="navMenu">
            	<c:if test="${sessionScope.m_id == null}">
                	<a href="${pageContext.request.contextPath}/member/loginForm"><span class="material-symbols-outlined">login</span></a>   
            	</c:if>
            	<c:if test="${sessionScope.m_id !=null}">
            		<c:choose>
						<c:when test="${sessionScope.m_type =='buyer'}">
	            			<a href="${pageContext.request.contextPath}/member/mypage"><span class="material-symbols-outlined">person</span></a>   
							<ul class="subnav">
		                    	<li><a href="${pageContext.request.contextPath}/member/logout"><span class="material-symbols-outlined">logout</span></a></li>
		                    	<li><a href="#"><span class="material-symbols-outlined">shopping_cart</span></a></li>
		            		</ul>
						</c:when>
						<c:when test="${sessionScope.m_type =='seller'}">
	            			<a href="${pageContext.request.contextPath}/seller/dashBoard"><span class="material-symbols-outlined">person</span></a>   
							<ul class="subnav">
		                    	<li><a href="${pageContext.request.contextPath}/member/logout"><span class="material-symbols-outlined">logout</span></a></li>
		            		</ul>
						</c:when>
						<c:when test="${sessionScope.m_type =='admin'}">
	            			<a href="${pageContext.request.contextPath}/admin/dashBoard"><span class="material-symbols-outlined">person</span></a>   
							<ul class="subnav">
		                    	<li><a href="${pageContext.request.contextPath}/member/logout"><span class="material-symbols-outlined">logout</span></a></li>
		            		</ul>
						</c:when>
						<c:otherwise>
		                	<a href="${pageContext.request.contextPath}/member/loginForm"><span class="material-symbols-outlined">login</span></a>   
						</c:otherwise>
					</c:choose>
					
            	</c:if>
            </li>
        </ul>
    </nav>
</div>