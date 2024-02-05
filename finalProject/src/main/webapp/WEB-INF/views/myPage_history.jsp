<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/css/table.css">
	<link rel="stylesheet" href="resources/css/section.css">
	<link rel="stylesheet" href="resources/css/board.css">
	<script src="resources/scripts/jquery-3.7.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<div id="mainWrap">
			<%@ include file="/resources/header/header.jsp" %>
			<div id="container">
				<div id="headerImg">
					<div class="headerTitle">
						<span>Account</span>
					</div>
				</div>
				<div id="tabMenu">
					<div class="ins w1200">
						<ul class="clearfix b50">
							<li class="now">
								<a href="myPage_history.do">이용내역</a>
							</li>
							<li>
								<a href="modifyUaerPage.do">회원정보 수정</a>
							</li>
						</ul>
					</div>
				</div>
				<input type="hidden" id="memberId" name="memberId" value="${memberId }">
				<div class="w1200">
					<div class="board-wrap">
						<div class="titleWrap">
							<span class="tit">My Page</span>
						</div>
					</div>
					<div id="tab1" class="table-wrap">
						<div class="top">
							<h4>객실 예약 정보</h4>
							<span class="total">
								<span>총 건수 : </span>
								<em id="pTot_room"><c:out value="${fn:length(reservationList)}" /></em>
							</span>
						</div>
						<c:choose>
							<c:when test="${not empty reservationList }">
								<div class="rsvn-list" id="list-room">
									<table border="1">
										<thead>
											 <tr>
									            <th>이름</th>
									            <th>체크인</th>
									            <th>체크아웃</th>
									            <th>객실타입</th>
									            <th>어른</th>
									            <th>어린이</th>
									            <th>예약취소</th>
									            <th>예약변경</th>
									        </tr>
										</thead>
										 <tbody>
									        <c:forEach var="reservation" items="${reservationList}">
									            <tr>
									                <td>${reservation.guest}</td>
									                <td>${reservation.checkin_date}</td>
									                <td>${reservation.checkout_date}</td>
									                <td>${reservation.room_type}</td>
									                <td>${reservation.adults}</td>
									                <td>${reservation.child}</td>
									                <td><a href="deleteReservation.do?room_id=${reservation.room_id}&is_reserved=${reservation.is_reserved}">예약취소</a></td>
									                <td><a href="updateReservationPage.do?reservation_id=${reservation.reservation_id }">예약변경</a>
									            </tr>
									        </c:forEach>
									    </tbody>
									</table>
								</div>
							</c:when>
							<c:otherwise>
								<div class="no-result-msg"></div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>