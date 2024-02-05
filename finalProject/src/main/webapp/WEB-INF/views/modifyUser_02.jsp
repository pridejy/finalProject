<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="resources/css/modal.css">
    <script src="resources/scripts/jquery-3.7.1.min.js"></script>
<!--     <script src="resources/scripts/modal.js"></script>-->
<title>회원정보수정</title>
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
                			<p class="board-title">MY PAGE</p>
                		</div>
						<%@ include file="./process-bar/process.jsp" %>
						<div class="register-form">
							<h4>회원정보수정</h4>
							<form method="post" action="modifyUser.do" id="registerMember" name="registerMember">
								<fieldset>
									<ul class="">
										<li>
											<span class="tit">아이디</span>
											<span class="con">
												<input type="text" name="id" id="id" value="${user.id}" readonly>												
											</span>
										</li>
										<li>
											<span class="tit">비밀번호<em>*</em></span>
											<span class="con">
												<input type="password" name="password" id="password">
											</span>
										</li>
										<li>
											<span class="tit">새 비밀번호</span>
											<span class="con">
												<input type="password" name="password2" id="password2">
												<span id="description">(비밀번호 변경시 입력해주세요.)</span>
											</span>
										</li>
										<li>
											<span class="tit">고객명<em>*</em></span>
											<input type="text" id="name" name="name" value="${user.name }">
										</li>
										<li>
											<span class="tit">영문명</span>
											<label>이름</label>
											<input type="text" id="firstName" name="firstName" value="${firstName}">
											<label>성</label>
											<input type="text" id="lastName" name="lastName" value="${lastName }">
										</li>
										<li>
											<span class="tit">이메일<em>*</em></span>
											<span class="con">
												<input type="text" id="email1" name="email1" value="${email1 }">											
													<span class="at">@</span>
												<input type="text" id="email2" name="email2" value="${email2 }">
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
												<input id="phone1" name="phone1" type="text" maxlength="3" value="${phone1}">
												 - 
												<input id="phone2" name="phone2" type="text" maxlength="4" value="${phone2}">
												 - 
												<input id="phone3" name="phone3" type="text" maxlength="4" value="${phone3}">
											</span>
										</li>				
									</ul>
								</fieldset>
								<input type="submit" value="확인">
							</form>
							<a href="login.jsp"><input type="button" value="취소"></a>
							<a href="deleteUser.do?id=${user.id}" class="delete-modal">회원탈퇴</a>
						</div>
                	</div>
                </div>
               	<%@ include file="/resources/footer/footer.jsp" %>
            </div>
		</div>
	</div>
<%-- <div class="modal">
 <div class="modal-contenta">
   <span class="close">&times;</span>
   <p>계정을 삭제하시겠습니까?</p>
   <a href="deleteUser.do?id=${user.id}" class="delete-link">네, 계정 삭제하기</a>
  </div>
</div> --%>
</body>
</html>