<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script src="resources/scripts/jquery-3.7.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<div id="mainWrapper">
			<%@ include file ="/resources/header/header.jsp" %>
			<div id="container">
				<div id="headerImg">
					<div class="headerTitle">
						<span>Event & Promotion</span>
					</div>
				</div>
			 	<div id="tabMenu">
					<div class="ins w1200">
						<ul class="clearfix b50">
							<li class="now">
								<a href="faqList.do">공지사항</a>
							</li>
							<li>
								<a href="EventAndPromotion.do">이벤트 & 프로모션</a>
							</li>
							<li>
								<a href="board.do">자주하는 질문</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="container">
					<div class="w1200">
						<div id="titleWrap">
							<span class="bigtit">이벤트&프로모션</span>
							<span class="smalltit">썬크루즈의 프로모션 및 이벤트를 확인하실 수 있습니다.</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>