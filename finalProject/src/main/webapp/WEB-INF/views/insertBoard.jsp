<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="resources/scripts/jquery-3.7.1.min.js"></script>
<title>새글 등록</title>
</head>
<body>
	<div class="wrapper">
		<div id="mainWrapper">
			<%@ include file="/resources/header/header.jsp" %>
			<div id="container">
				<div id="headerImg">
					<div class="headerTitle">
						<span>Board</span>
					</div>
				</div>
				<div id="tabMenu">
					<div class="ins w1200">
						<ul class="clearfix b50">
							<li class="now">
								<a href="#">공지사항</a>
							</li>
							<li>
								<a href="#">이벤트 & 프로모션</a>
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
							<span class="tit">글 등록</span>
						</div>
					</div>
				</div>
				<form action="insertBoard.do" method="post">
					<table border="1">
						<tr>
							<td>제목</td><td><input type="text" name="title"></td>
						</tr>
						<tr>
							<td>작성자</td><td><input type="text" id="id" name="id" value="${userId}" readonly></td>
						</tr>
						<tr>
							<td>내용</td><td><textarea name="content" cols="40" rows="10"></textarea></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="새글 등록"/></td>
						</tr>
					</table>
				</form>
				<hr>
				<a href="getBoardList.do">글 목록 가기</a>
			</div>
		</div>
	</div>
</body>
</html>