<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/css/reservation3.css">
	<script src="resources/scripts/jquery-3.7.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<div id="mainWrap">
			<%@include file="/resources/header/header.jsp" %>
			<div id="container">
				<div id="headerImg">
					<div class="headerTitle">
						<span>Reservation</span>
					</div>
				</div>
				<div class="w1200">
					<div class="board-wrap">
						<div id="titleWrap">
							<p class="board-title">Reservation</p>
						</div>
					</div>
					<div class="complete-wrap">
						<div id="complete">
							<div id="completeMessage">
                            예약이 완료되었습니다.
                        </div>
                        	<a id="mainPageLink" href="main.do">메인으로</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>