<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/css/datepicker.css">
	<link rel="stylesheet" href="resources/css/section.css">
	<link rel="stylesheet" href="resources/css/reservation.css">
	<script src="resources/scripts/jquery-3.7.1.min.js"></script>
	<script src="resources/scripts/datepicker.js"></script>
	<script src="resources/scripts/searchRoomList.js"></script>
<title>예약</title>
</head>
<body>
	<div class="wrapper">
		<div id="mainWrap">
			<%@ include file="/resources/header/header.jsp" %>
			<div id="container">
				<div id="headerImg">
					<div class="headerTitle">
						<span>Reservation</span>
					</div>
				</div>
				<div class="w1200">
					<div class="board-wrap">
						<div id="titleWrap">
							<p class="board-title">Reservation</p>
						</div>
						<div class="bookArea-wrap">
							<div id="bookArea" class="book">
								<form id="searchRooms" class="searchRooms" name="searchRooms" method="get" action="reservation_02.do">
	                            	<input type="hidden">
	                                <input type="hidden">
	                                <input type="hidden">
	                                <div id="searchAccomodation">
	                                    <!-- 날짜 -->
	                                    <div class="date">
	                                        <div class="checkIn">
	                                            <p>check In</p>
	                                            <input type="text" name="checkin_date" id="checkin_date" class="startDate" value="${rsvn.reservationVO.checkin_date}" readonly>
	                                        </div>
	                                    </div>
	                                    <div class="date">
	                                    	<div class="checkOut">
	                                            <p>check out</p>
	                                            <input type="text" name="checkout_date" id="checkout_date" class="endDate" value="${rsvn.reservationVO.checkout_date}" readonly>
	                                        </div>
	                                    </div>
	                                    <!-- 방 개수-->
	                                    <div class="Rooms">
	                                        <p>Rooms</p>
	                                        <select id="roomType" name="roomType">
	                                            <option value="Luxury_Room" ${"Luxury_Room".equals(rsvn.room_type) ? 'selected' : ''}>luxury_Room</option>
	                                            <option value="junior_suiteRoom" ${"junior_suiteRoom".equals(rsvn.room_type) ? 'selected' : ''}>junior_suiteRoom</option>
	                                            <option value="Corner_suiteRoom"${"Corner_suiteRoom".equals(rsvn.room_type) ? 'selected' : '' }>corner_suiteRoom</option>
                                       		</select>
	                                    </div>
	                                    <!--성인 인원-->
	                                    <div class="people">
	                                        <p>Adults</p>
	                                        <select id="numPeople" name="numPeople">
	                                            <c:forEach begin="1" end="6" var="i">
	                                            	<option value="${i}" ${i eq rsvn.reservationVO.adults ? 'selected' : ''}>${i}</option>
	                                            </c:forEach>
	                                        </select>
	                                    </div>
	                                    <!--아이 인원-->
	                                    <div class="child">
	                                        <p>Child</p>
	                                        <select id="numChild" name="numChild">
	                                        	<c:forEach begin="0" end ="6" var="i">
	                                        		<option value="${i}" ${i eq rsvn.reservationVO.child ? 'selected' : '' }>${i}</option>
	                                        	</c:forEach>
	                                        </select>
	                                    </div>
	                                    <!-- 검색버튼 -->
										<input type="submit" id="searchButton" value="검색">
	                                </div>
	                            </form>
							</div>
						</div>
						<!-- 객실 상품 -->
						<div class="mypage-form" id="dataList">
							<div class="noDate" style="display:none;">이용가능한 객실이 없습니다.</div>
							<div class="title divRoom roomList">
								<h4>객실 상품</h4>
							</div>
							<div class="rsvn-wrap">
								<!-- <div class="rsvn-list" data-room-type="PPA" -->
								<table border="1">
							        <thead>
							            <tr>
							                <th>객실 번호</th>
							                <th>객실 타입</th>
							                <th>객실 사이즈</th>
							                <th>인원</th>
							                <th>가격</th>
							                <th>예약</th>
							                <!-- 필요한 다른 열들도 추가할 수 있습니다. -->
							            </tr>
							        </thead>
							        <tbody>
							        	<c:forEach var="room" items="${srvn}">
							                <tr>
							                    <td>${room.room_id}</td>
							                    <td>${room.room_type}</td>
							                    <td>${room.room_size }</td>
							                    <td>${room.capacity }</td>
							                    <td>${room.price }</td>																							
							                    <td>
													<form action="reservation_02.do" method="get">
														<input type="hidden" name="room_id" value="${room.room_id}">
														<input type="hidden" name="room_type" value="${room.room_type }">
														<input type="hidden" name="room_size" value="${room.room_size }">
														<input type="hidden" name="capacity" value="${room.capacity }">
														<input type="hidden" name="price" value="${room.price }">
														<input type="hidden" name="checkin_date" value="${rsvn.reservationVO.checkin_date}">
														<input type="hidden" name="checkout_date" value="${rsvn.reservationVO.checkout_date}">
														<input type="hidden" name="adults" value="${rsvn.reservationVO.adults}">
														<input type="hidden" name="child" value="${rsvn.reservationVO.child}">
														<input type="submit" value="예약">
													</form>
												</td>
							                </tr>
						                </c:forEach>
							        </tbody>
							    </table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>