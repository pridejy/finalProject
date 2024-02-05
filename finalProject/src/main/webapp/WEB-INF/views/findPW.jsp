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
    <script src="resources/scripts/findPW.js"></script>
<title>아이디 찾기</title>
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
								<a href="findIdPage.do">아이디 찾기</a>
							</li>
							<li>
								<a href="findPwPage.do">비밀번호 찾기</a>
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
										<h3>비밀번호 찾기</h3>
										<p>가입 시 입력하셨던 아이디, 이름, 이메일을 입력해주세요.</p>
									</div>
									<fieldset>
										<form method="post" action="findPw.do" name="frmFindPw" id="frmFindPw" novalidate="novalidate">
											<ul>
												<li>
													<input type="text" id="f_id" name="f_id" placeholder="아이디">
												</li>
												<li>
													<input type="text" id="f_name" name="f_name" placeholder="이름">
												</li>
												<li>
													<input type="text" id="f_email" name="f_email" placeholder="이메일">
												</li>
											</ul>
											<button class="bt" id="btn_findPw">확인</button>
										</form>
									</fieldset>
									<p id="userPW"></p>
								</div>
							</div>
						</div>
						<div id="myModal" class="modal">
							<div class="modal-content">
								<span class="close">&times;</span>
								<p id="userPW"></p>
								<button class="btn" id="btn_checkPw">확인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>