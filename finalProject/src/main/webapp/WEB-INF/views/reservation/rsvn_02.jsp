<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/css/reservation2.css">
	<script src="resources/scripts/jquery-3.7.1.min.js"></script>
	<script src="resources/scripts/reservation.js"></script>
<title>추가사항</title>
</head>
<body>
	<div id="wrapper">
		<div id="mainWrap">
			<%@include file="/resources/header/header.jsp" %>
			<div id="container">
				<div id="headerImg">
					<div class="headerTitle">
						<span>Reservation</span>
					</div>
				</div>
				<div class="w1200">
					<div class="board-wrap">
						<div id="titleWrap">
							<p class="board-title">Rservation</p>
						</div>
						<div class="grid-wrap">
							<div class="grid-cell">
								<form id="frm" name="frm" method="post" action="reservation_03.do">
									<input type="hidden" name="member_id" value="${user.id}">
									<input type="hidden" name="room_id" value="${rsvn.room_id}">	
									<input type="hidden" name="room_type" value="${rsvn.room_type }">
									<input type="hidden" name="room_size" value="${rsvn.room_size }">
									<input type="hidden" name="capacity" value="${rsvn.capacity }">
									<input type="hidden" name="price" value="${rsvn.price }">
									<input type="hidden" name="checkin_date" value="${rsvn.reservationVO.checkin_date }">
									<input type="hidden" name="checkout_date" value="${rsvn.reservationVO.checkout_date }">
									<input type="hidden" name="adults" value="${rsvn.reservationVO.adults }">
									<input type="hidden" name="child" value="${rsvn.reservationVO.child }">
									<!-- input 태그들 정보 -->
									<div id="rsvnStep1" class="rsvnStep">
										<div class="mypage-form">
											<div class="toggle-wrap nmgt">
												<div class="toggle-bt">추가요청사항</div>
												<div class="toggle-box">
													<div class="textarea">
														<textarea id="f_remark" name="f_remark"></textarea>
													</div>
													<p class="mgt">※ 요청사항을 입력해주십시오.</p>
												</div>
											</div>
										</div>
									</div>
									<div id="rsvnStep2" class="rsvnStep">
										<!--  예약 정보 입력 -->
										<div class="reservation-wrap nmgt">
											<div class="title">
												<h4>고객 정보 입력</h4>
												<span class="text">
													<em class="imp">*</em>
													표시 필수 입력사항
												</span>
											</div>
											<div class="rsvn-wrap">
												<div class="rsvn-list">
													<div class="rsvn-content">
														<div class="cell">
															<div class="form-wrap">
																<h5>예약자 정보 입력</h5>
																<table border="1">
																	<tr>
																		<td>성명(한글)</td><td><input type="text" name="name" id="name" value="${user.name}"></td>
																	</tr>
																	<tr>
																		<td>이메일</td><td><input type="email" name="email" id="email" value="${user.email}"></td>
																	</tr>
																	<tr>
																		<td>휴대폰</td><td><input type="text" name="phone" id="phone" value="${user.phone}"></td>
																	</tr>
																</table>
															</div>
														</div>
														<div class="cell">
															<div class="form-wrap">
																<h5>투숙자 정보 입력</h5>
																<table border="1">
																	<tr>
																		<td>성명(한글)</td><td><input type="text" name="guest" id="guest"></td>
																	</tr>
																	<tr>
																		<td>연락처</td><td><input type="text" name="guest_phone" id="guest_phone"></td>
																	</tr>
																</table>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="breach-wrap">
												<div class="breach-bt">공식 홈페이지 위약 규정</div>
												<div class="breach-box">						
													<p>※ 1인 투숙은 불가 하오니 자세한 문의는 호텔로 연락 주시기 바랍니다.</p>
													<p>도착 7일 전 : 전액 환불</p>
													<p>도착 6~2일 전 : 위약 30%</p>
													<p>도착 1일 전 : 위약 50%</p>
													<p>당일 취소 및 미도착 : 환불 불가</p>
												</div>
											</div>
										</div>
									</div>
									<div class="grid-cell w300">
										<div class="rsvnInfo">
											<h3>예약정보</h3>
											<button type="button" class="bt_reset">예약초기화</button>
										</div>
										<div class="contents">
											<div class="con-group">
												<h4 class="hotelName">썬크루즈 호텔 & 리조트</h4>
												<ul class="rsvn-info-list">
													<li>
														<div class="tit">체크인</div>
														<div class="con">${rsvn.reservationVO.checkin_date}</div>
													</li>
													<li>
														<div class="tit">체크아웃</div>
														<div class="con">${rsvn.reservationVO.checkout_date}</div>
													</li>
													<li>
														<div class="tit">인원</div>
														<div class="con">${rsvn.capacity }</div>
													</li>
													<li>
														<div class="tit">객실타입</div>
														<div class="con">${rsvn.room_type }</div>
													</li>
												</ul>
											</div>
											<div class="con-group">
												<h4>객실/패키지</h4>
												<div class="img-wrap">
													<img src="">
												</div>
												<ul class="rsvn-info-list">
													<li>
													</li>
												</ul>
											</div>
											<div class="con-group" style="display:none;">
												<h4>옵션</h4>
												<ul class="rsvn-info-list"></ul>
											</div>
										</div>
										<div class="contents pay">
											<ul class="rsvn-info-list">
												<li class="vertical-middle">
													<div class="tit">
														<p>합계 금액</p>
														<br>
														<p>vat포함</p>
													</div>
													<div class="con">
														<span class="total-price">
															<!-- <Strong class="js-total-price"></Strong>-->
															<span>${rsvn.price}원</span>
														</span>
													</div>
												</li>
											</ul>
										</div>
										<div class="bt-wrap">
											<ul>
												<c:choose>
													<c:when test="${not empty sessionScope.user }">
														<li>
															<input type="submit" value="예약신청">
														</li>	
													</c:when>
													<c:otherwise>
														<li>
															<button type="button" id="login" name="login" class="bt js-btn-member">회원 예약</button>
														</li>
													</c:otherwise>
												</c:choose>
											</ul>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>