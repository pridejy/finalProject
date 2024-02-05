<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="resources/scripts/jquery-3.7.1.min.js"></script>
    <script src="resources/scripts/register.js"></script>
    <title>register</title>
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
                			<p class="board-title">JOIN</p>
                		</div>
						<%@ include file="./process-bar/process.jsp" %>
						<div class="register-form">
							<h4>회원정보입력</h4>
							<form method="post" action="register.do" id="registerMember" name="registerMember">
								<fieldset>
									<ul class="">
										<li>
											<span class="tit id">아이디<em>*</em></span>
											<span class="con">
												<input type="text" name="id" id="id">
												<span id="idCheckMsg"></span>
											</span>
										</li>
										<li>
											<span class="tit">비밀번호<em>*</em></span>
											<span class="con">
												<input type="password" name="password" id="password">
											</span>
										</li>
										<li>
											<span class="tit">비밀번호 확인<em>*</em></span>
											<span class="con">
												<input type="password" name="password2" id="password2">
												<span id="passwordCheckMsg"></span>
											</span>
										</li>
										<li>
											<span class="tit">고객명<em>*</em></span>
											<span class="con">
												<input type="text" name="name" id="name">
											</span>
										</li>
										<li>
											<span class="tit">영문명</span>
											<span class="con">
												<input type="text" name="firstName" id="firstName" placeholder="이름">
												<input type="text" name="lastName" id="lastName" placeholder="성">
											</span>
										</li>
										<li>
											<span class="tit">이메일<em>*</em></span>
											<span class="con">
												<span class="email-wrap">
													<input type="text" id="email1" name="email1">
													<span class="at">@</span>
													<input id="email2" name="email2" type="text" title="이메일 주소 직접입력" maxlength="80">
												</span>
												<select id="emailDomain" name="emailDomain" title="이메일 주소 선택">
													<option selected="selected" value="custom">직접입력</option>
								                    <option value="naver.com">naver.com</option>
								                    <option value="nate.com">nate.com</option>
								                    <option value="hanmail.net">hanmail.net</option>
								                    <option value="gmail.com">gmail.com</option>
												</select>
											</span>
										</li>
										<li>
											<span class="tit">핸드폰<em>*</em></span>
											<span class="con">
												<input id="phone1" name="phone1" type="text" maxlength="3">
												 - 
												<input id="phone2" name="phone2" type="text" maxlength="4">
												 - 
												<input id="phone3" name="phone3" type="text" maxlength="4">
											</span>
										</li>			
									</ul>
								</fieldset>
								<input type="submit" value="확인">
							</form>
							<a href="/"><input type="button" value="취소"></a>
						</div>
                	</div>
                </div>
               	<%@ include file="/resources/footer/footer.jsp" %>
            </div>
		</div>
	</div>
</body>
</html>