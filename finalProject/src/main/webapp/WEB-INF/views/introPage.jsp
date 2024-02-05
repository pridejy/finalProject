<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/findId.css"/>
    <script src="resources/scripts/jquery-3.7.1.min.js"></script>
    <script src="resources/scripts/findId.js"></script>
<title>Insert title here</title>
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
				<div id="tabMenu" class="com">
					<div class="ins">
						<ul class="menu">
							<li class="first">
								<a href="introPage.do">호텔 소개</a>
							</li>
							<li>
								<a href="location.do">오시는 길</a>
							</li>
						</ul>
					</div>
				</div>
				
				<div class="main">
					<div class="introduction">
						<div class="introduction-wrap">
							<h2>소개</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>