<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/login.css"/>
    <script src="resources/scripts/jquery-3.7.1.min.js"></script>
    <script src="resources/scripts/login.js"></script>
    <title>login</title>
</head> 
<body>
   <div class="wrapper">
       <div id="mainWrap">
           <%@ include file ="/resources/header/header.jsp" %>
           <!-- 헤더이미지 -->
           <div id="container">
               <div id="headerImg">
                   <div class="headerTitle">
                       <span>Account</span>
                   </div>
               </div>
               <!-- 로그인 영역 -->
               <div class="main">
                   <div class="login">
                       <div class="login-wrap">
                           <div id="titleWrap">
                               <p class="title-name">Login</p>
                           </div>
                           <div class="login-form-wrap">
                               <div class="login-form">
                                   <div id="member">
                                       <div class="member-title">
                                           <h2>01. 회원</h2>
                                           <p>회원으로 예약할 경우 로그인 하시면 예약확인이 가능합니다.</p>
                                       </div>
                                       <!-- loMember= 회원로그인 -->
                                       <form action="login.do" id="loginMember" name="loginMember" method="post">
                                           <div class="form-field">
                                           		<div class="form-check">
                                           			<input type="radio" name="loginType" value="user" checked> 일반사용자
                                           			<input type="radio" name="loginType" value="manager">관리자
                                           		</div>
                                               <!-- 아이디 -->
                                               <div class="field-id">
                                                   <div class="form-column">
                                                       <input id="id" name="id" type="text" class="form-control" required placeholder="아이디">
                                                   </div>
                                               </div>
                                               <!-- 비밀번호 -->
                                               <div class="field-password">
                                                   <div class="form-column">
                                                       <input id="password" name="password" type="password" class="form-control" required placeholder="비밀번호">
                                                   </div>
                                               </div>
                                               <div class="form-check">
                                                   <!--아이디 저장-->
                                                   <input type="checkbox" class="form-check-input" name="idSave" id="idSave">
                                                   <label class="form-check-label" for="idSave">
                                                       <span class="text">아이디저장</span>
                                                   </label>
                                               </div>
                                               <!-- 로그인 버튼 -->
                                               <button class="loginBtn" id="loginBtn">로그인</button>
                                               <p class="or">
                                                   <span>OR</span>
                                               </p>
                                               <!-- <ul class="sns">
                                                   <li>
                                                       <button type="button" id="googleBtn" class="snsBtnGoogle" onclick="">google</button>
                                                   </li>
                                                   <li>
                                                       <button type="button" id="kakaoBtn" class="snsBtnKakao" onclick="">kaka</button>
                                                   </li>
                                                   <li>
                                                       <button type="button" id="naverBtn" class="snsBtnNaver" onclick="">Naver</button>
                                                   </li>
                                               </ul> -->
                                           </div>
                                       </form>
                                   </div>
                                   <!-- 비회원로그인 -->
                                   <div id="non-member">
                                       <div class="non-member-title">
                                           <h2>02. 비회원(예약확인)</h2>
                                           <p>비회원 예약 시, 예약번호를 입력하셔야 예약조회가 가능합니다.</p>
                                       </div>
                                       <form action="non-login" id="loginGuest" name="loginGuest" method="post" novalidate="novalidate">
                                           <div class="field-guest">
                                               <div class="field-guest-name">
                                                   <div class="form-column">
                                                       <input type="text" id="f_name" name="f_name" class="form-non-control" placeholder="이름">
                                                   </div>
                                               </div>
                                               <div class="field-guest-number">
                                                   <div class="form-column">
                                                       <input type="text" id="f_number" name="f_number" class="form-non-control" placeholder="예약번호">
                                                   </div>
                                               </div>
                                               <button class="checkGuest" id="checkGuest">예약 확인</button>
                                           </div>
                                       </form>
                                   </div>
                               </div>
                               <div class="mypage-box">
                                   <div class="loginMenu">
                                       <p>회원가입</p>
                                       <a class="bt" href="registerPage2.do">회원가입</a>
                                   </div>
                                   <div class="loginMenu">
                                       <p>아이디 비밀번호 찾기</p>
                                       <a class="bt" href="findIdPage.do">아이디 찾기</a>
                                       <a class="bt" href="findPwPage.do">비밀번호 찾기</a>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>
       <!--  로그인 틀렷을때 모달 창  -->
       <!-- 
		<div id="msgPop" class="needpopup">
			<div class="header">
				<div class="content">
					<div class="text-wrap">
						<p id="msgPop_text">잘못된 비밀번호입니다.</p>
					</div>
					<div class="bt-wrap">
						<a href="" class="bt bt-01">확인</a>
					</div>
				</div>
			</div>
		</div>
		-->
   </div>
</body>
</html>