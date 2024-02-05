<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<link rel="stylesheet" href="resources/css/HotelInformation.css">
	<script src="resources/scripts/jquery-3.7.1.min.js"></script>
	<script src="resources/scripts/HotelInformation.js"></script>	
<title>Accomodation</title>
</head>
<body>
	<div id="wrapper">
		<div id="mainWrap">
			<%@include file ="/resources/header/header.jsp" %>
			<div id="container">
				<div id="headerImg">
					<div class="headerTitle">
						<span>Accomodation</span>
					</div>
				</div>
				<div id="tabMenu">
					<div class="ins w1200">
						<ul class="clearfix b50">
							<li class="now">
								<a href="luxuryPage.do">럭셔리</a>
							</li>
							<li class="now">
								<a href="suitePage.do">주니어스위트</a>
							</li>
							<li class="now">
								<a href="conerPage.do">코너스위트</a>
							</li>
						</ul>
					</div>
				</div>
				<div id="conArea">
					<div class="accom-wrap">
						<div id="titleWrap" class="w1200">
							<span class="bitTit">주니어 스위트</span>
						</div>
						<div class="w1200">
							<div class="roomImg">
								<div class="bx-wrapper" style="max-width:100%">
									<div class="bx-viewport"></div>
								</div>
								<div class="outside">
									<span id="slider2-prev">
										<a class="bx-prev">Prev</a>
									</span>
									<span id="slider2-next">
										<a class="bx-next">next</a>
									</span>
								</div>
							</div>
							<div class="information">
								<div class="tit">
									<h2>Information</h2>
									<button class="btn_reservation">객실예약</button>
								</div>
								<div class="toggle-btn-wrap">
									<a href="">더블 일출 하프오션뷰</a>
									<a href="">더블 오션뷰</a>
								</div>
								<div class="infoIns">
									<div class="info first">
										<ul class="clearfix">
											<li class="b2">
												<dl>
													<dt>객실크기(㎡)</dt>
													<c:forEach items="${Rooms }" var="junior_room">
													<dd>${junior_room.room_size }(㎡)</dd>
													</c:forEach>
												</dl>
												<dl>
													<dt>배드타입</dt>
													<dd>더블 : ${BedType[0]}</dd>
												</dl>
											</li>
											<li class="b2">
												<dl>
													<dt>이용기준인원</dt>
													<dd>더블: ${occupancy[0]}</dd>
												</dl>
											</li>
										</ul>
									</div>
									<div class="info second">
										<ul class="clearifx">
											<li class="b2">
												<dl>
													<dt>어메니티</dt>
													<dd>
														${Amenity[0]}, ${Amenity[1]}
														<br>
														${Amenity[10]}, ${Amenity[2]}
														<br>
														${Amenity[3]}, ${Amenity[4]}, ${Amenity[5]}
														<br>
														${Amenity[6]} (${Amenity[7]}, ${Amenity[8]}, ${Amenity[9]})
													</dd>
												</dl>
											</li>
										</ul>
									</div>
									<!-- Amenity -->
									<div class="list amenity">
										<ul class="clearfix">
											<li>
												<div>
													<img src="">
													<span>${additional[0]}</span>
												</div>
											</li>
											<li>
												<div>
													<img src="">
													<span>${additional[1]}</span>
												</div>
											</li>
											<li>
												<div>
													<img src="">
													<span>${additional[2]}</span>
												</div>
											</li>
											<li>
												<div>
													<img src="">
													<span>${additional[3]}</span>
												</div>
											</li>
											<li>
												<div>
													<img src="">
													<span>${additional[4]}</span>
												</div>
											</li>
										</ul>
									</div>
									<div class="service">
										<div class="clearfix">
											<h3>이용안내</h3>
								            <ul>
								                <li>
								                    <strong>체크인 - 15:00 / 체크아웃 - 익일 11:00</strong>
								                </li>
								                <c:forEach items="${Info}" var="info">
								                <li class="info">${info}</li>
								            	</c:forEach>
								            </ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<section class="otherRoom">
							<div class="w1200">
								<h1>Room types</h1>
								<div class="bx-wrapper">
									<div class="bx-viewport">
										<ul>
										</ul>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
				<!-- Content -->
			</div>
		</div>
		<%@include file="/resources/footer/footer.jsp" %>
	</div>
</body>
</html>