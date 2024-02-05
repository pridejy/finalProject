<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <link rel="stylesheet" href="resources/css/header.css"/>
 <script src="resources/scripts/header.js"></script>
 <div id="header" style="height:75px">
     <div class="header_ins">
         <!--로고이미지-->
         <div class="logo-img">
             <a href="main.do">
                 <img src="resources/images/png/logo.png">
             </a>
         </div>
       	<c:choose>
       		<c:when test="${not empty sessionScope.user }">
       			<div class="menu">
       				<a href="modifyUserPage.do">My Page</a>
       				<a href="logout.do">logout</a>
       			</div>
       		</c:when>
       		<c:when test="${not empty sessionScope.manager }">
       			<div class="menu">
       				<a href="adminPage.do">Admin Page</a>
       				<a href="logout.do">Logout</a>
       			</div>
       		</c:when>
       		<c:otherwise>
       			<div class="menu">
             		<a href="loginPage.do">login</a>
             		<a href="registerPage2.do">join</a>
             	</div>
         	</c:otherwise>
       	</c:choose>
         <!--서브메뉴-->
         <div id="gnbMenu">
             <ul>
                 <li>
                     <a href="intropage.do">About</a>
                     <ul class="subMenu">
                         <li>
                             <a href="introPage.do">호텔 소개</a>
                             <a href="location.do">호텔 위치</a>
                         </li>
                     </ul>
                 </li>
                 <li>
                     <a href="/condo_delux.jsp">Accomodation</a>
                     <ul class="subMenu">
                         <li>
                             <a href="luxuryPage.do">호텔형</a>
                         </li>
                     </ul>
                 </li>
                 <li>
                     <a href="">Reservation</a>
                     <ul class="subMenu">
                         <li>
                             <a href="reservation_01.do">예약</a>
                             <c:choose>
                             	<c:when test="${not empty sessionScope.user }">
                             		<li>
                             			<a href="mypage_history.do">예약조회</a>
                             		</li>
                             	</c:when>
                             	<c:otherwise>
                             		<li>
                             			<a href="loginPage.do">예약조회</a>
                             		</li>
                             	</c:otherwise>
                             </c:choose>
                         </li>
                     </ul>
                 </li>
                 <li>
                     <a href="">Event & Promotion</a>
                     <ul class="subMenu">
                         <li>
                             <a href="getfaqBoardList.do">공지사항</a>
                             <a href="EventAndPromotion.do">이벤트 & 프로모션</a>
                             <a href="getBoardList.do">게시판</a>
                         </li>
                     </ul>
                 </li>
             </ul>
         </div>	
         <!--오른쪽 메뉴-->
         <div class="rightMenu">
             <div class="timeImages"></div>
             <ul>
                 <li>
                    <a href="/changeLanguage?lang=en_US" class="select_len_show">KOR</a>
                 </li>
                 <li>
                 	<a href="/changeLanguage?lang=ko_KR" class="select_len">ENG</a>
                 </li>
                 <li>
                 	<a href="/changeLanguage?lang=ja_JP" class="select_len">日本語</a>
                 </li>
             </ul>
         </div>
     </div>
 </div>