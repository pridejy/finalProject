<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e9683b5ee22f4b78f4b2f665e357fcd9"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
    <link rel="stylesheet" href="resources/css/location.css"/>
    <script src="resources/scripts/jquery-3.7.1.min.js"></script>
    <script src="resources/scripts/findId.js"></script>
<title>location</title>
</head>
<body>
	<div class="wrapper">
		<div id="mainWrap">
			<%@ include file="/resources/header/header.jsp" %>
			<div id="container">
				<div id="headerImg">
					<div class="headerTitle">
						<span>About</span>
					</div>
				</div>
				<div id="tabMenu">
					<div class="ins w1200">
						<ul class="tabmenu">
							<li class="clearfix b50">
								<a href="introPage.do">호텔 소개</a>
							</li>
							<li>
								<a href="location.do">오시는 길</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="main">
					<div class="location">
						<div class="location-wrap">
							<h3>오시는 길</h3>
						</div>
					</div>
					<div id="locationWrap">
						<div class="location">
							<div id="map" style="width:100%; height:600px;"></div>
							<script src="resources/scripts/kakaoMap.js"></script>
							<div class="IocCon">
								<div class="address">
									<img src="resources/images/png/location.png">
									서울
									<p>Tel. 010-6324-8156</p>
								</div>
								<div class="locList">
									<div class="first">
										<img src="resources/images/png/car.png"></img>
										<div>
											<h1>자가용 이용시</h1>
											<h2>주소: 서울</h2>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>