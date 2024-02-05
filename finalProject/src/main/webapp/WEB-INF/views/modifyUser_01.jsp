<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/findId.css"/>
    <script src="resources/scripts/jquery-3.7.1.min.js"></script>
    <script src="resources/scripts/modfiyUser.js"></script>
<title>회원정보수정</title>
</head>
<body>
	<div class="wrapper">
		<div id="mainWrap">
			<%@ include file ="/resources/header/header.jsp" %>
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
								<a href="#">이용내역</a>
							</li>
							<li>
								<a href="modifyUaerPage.do">회원정보 수정</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="w1200">
					<div class="board-wrap">
						<div class="mypage-form">
							<div class="login-form">
								<div class="form-wrap">
									<div class="tit">
										<h3>회원정보 수정</h3>
										<p>비밀번호를 다시 한번 입력해주세요</p>
									</div>
									<fieldset>
										<form method="post" action="modifyUser_02.do" name="frmFindId" id="frmFindId" novalidate="novalidate">
											<input type="hidden" id="userId" value="${user.id }"/>
											<ul>
												<li>
													<input type="text" value="${user.id}" readonly>
												</li>
											</ul>
											<ul>
												<li>
													<input type="password" name="password" id="password">
												</li>
											</ul>
											<button class="bt" id="btn_modifyUser">확인</button>
										</form>
									</fieldset>
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