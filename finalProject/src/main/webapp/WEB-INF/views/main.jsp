<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/main.css">
    <link rel="stylesheet" href="resources/css/datepicker.css">
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e9683b5ee22f4b78f4b2f665e357fcd9"></script>
	<script src="resources/scripts/jquery-3.7.1.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src="resources/scripts/main.js"></script>
	<!-- datepicker -->
    <script src="resources/scripts/datepicker.js"></script>
    <title>main</title>
</head>
<body>
    <div class="wrapper">
        <div id="mainWrap">
        	<%@ include file ="/resources/header/header.jsp" %>
            <div id="container">
                <div class="content">
                    <div class="bx-wrapper">
                        <div class="bx-wrapper-slide">
                            <div class="bxslide"></div>
                        </div>
                        <div class="bx-controls">
                            <div class="bxslide-pager">
                                <div class="bx-pager-item"></div>
                            </div>
                        </div> 
                        
                    </div>
                    <!--보류(스크롤)-->
                    <!-- <div class="mainIndicator">
                        <ul>
                            <li><a href="">Home</a></li>
                            <li><a href="">Accomodation</a></li>
                            <li><a href="">Dining & Bar</a></li>
                            <li><a href="">Facility</a></li>
                        </ul>
                    </div> -->

                    <!-- checkin-->
                    <div class="checkInOut_wrap">
                        <div class="checkInOut">
                            <form id="searchRooms" class="searchRooms" name="searchRooms" method="get" action="reservation_01.do">
                            	<input type="hidden">
                                <input type="hidden">
                                <input type="hidden">
                                <div id="searchAccomodation">
                                    <!-- 날짜 -->
                                    <div class="date">
                                        <div class="checkIn">
                                            <p>check In</p>
                                            <input type="text" name="checkin_date" id="checkin_date" class="startDate" readonly>
                                        </div>
                                    </div>
                                    <div class="date">
                                    	<div class="checkOut">
                                            <p>check out</p>
                                            <input type="text" name="checkout_date" id="checkout_date" class="endDate" readonly>
                                        </div>
                                    </div>
                                    <!-- 방 개수-->	
                                    <div class="Rooms">
                                        <p>RoomType</p>
                                        <select id="room_type" name="room_type">
                                            <option value="Luxury_Room">luxury_Room</option>
                                            <option value="junior_suiteRoom">junior_suiteRoom</option>
                                            <option value="Corner_suiteRoom">corner_suiteRoom</option>
                                        </select>
                                    </div>
                                    <!--성인 인원-->
                                    <div class="people">
                                        <p>Adults</p>
                                        <select id="numPeople" name="numPeople">
                                        	<c:forEach begin="1" end="6" var="i">
                                        		<option value="${i}">${i}</option>
                                        	</c:forEach>
                                        </select>
                                    </div>
                                    <!--아이 인원-->
                                    <div class="child">
                                        <p>Child</p>
                                        <select id="numChild" name="numChild">
											<c:forEach begin="0" end="6" var="i">
												<option value="${i}">${i}</option>
											</c:forEach>
                                        </select>
                                    </div>
                                    <!-- 검색버튼 -->
									<input type="submit" id="searchButton" value="검색">
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Accomodation이미지-->
                    <div id="accomodation">
                        <div class="accomodation-wrap">
                            <div class="title">
                                <h1>Hotel Accomodation</h1>
                            </div>
                            <div id="rooms">
                                <div class="rooms-view">
                                    <ul class="rooms-slider">
                                        <li>
                                            <span class="img1">
                                                <img src="resources/images/jpg/luxury3.jpg" height="260">
                                            </span>
                                            <div class="info">
                                                <h3>호텔 럭셔리</h3>
                                                <span class="viewBtn"><a href="luxuryPage.do">자세히보기</a></span>
                                            </div>
                                        </li>
                                        <li>
                                            <span class="img2">
                                                <img src="resources/images/jpg/balcony1.jpg" height="260px">
                                            </span>
                                            <div class="info">
                                                <h3>콘도 디럭스</h3>
                                                <span class="viewBtn">자세히 보기</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 호텔 정보, 위치-->
                    <div id="Area">
                        <div class="mapIns">
                            <div class="mapTitle-wrap">
							    <h1 class="location-Title">Location</h1>
							    <div class="location-info">
							        <p>서울특별시 강남구 강남대로 79길 8</p>
							        <p>Tel. 02-556-5611</p>
							        <p>E-mail. pridejy@Naver.com</p>
							    </div>
							    <div class="social">
							        <a href="https://www.instagram.com/" class="instagram"><img src="resources/images/png/instagram.png" alt="Instagram"></a>
							        <a href="https://naver.me/FlJZtioo" class="imgLocation"><img src="resources/images/png/location.png" alt="Naver Map"></a>
							    </div>
							</div>
                            <!-- 카카오 지도 -->
                            <div class="mapWrap">
                                <div class="location">
                                    <div id="map" style="width:100%;height:400px;"></div>
                                    <script src="resources/scripts/kakaoMap.js"></script>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%@ include file ="/resources/footer/footer.jsp" %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>




