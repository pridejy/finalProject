<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="resources/scripts/jquery-3.7.1.min.js"></script>
    <script src="resources/scripts/login.js"></script>
<title>회원가입완료</title>
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
				<div class="w1200">
                	<div class="board-wrap">
                		<div id="titleWrap">
                			<p class="board-title">Welcome</p>
                		</div>
                		<%@ include file="./process-bar/process.jsp" %>
                		<div class="registerOK-form">
                			<div class="wrap">
                				<h2>회원가입이 완료되었습니다.</h2>
                				<p>회원이 되신 것을 환영합니다.!</br>
                				가입하신 아이디와 비밀번호로 로그인이 가능합니다.<br>
                				가입 시 입력하신 개인정보는 안전하게 보관됨을 알려드립니다.</p>
								<div class="">
									<a href="loginPage.do">로그인</a>
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