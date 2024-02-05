<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/getBoard.css"/>
<link rel="stylesheet" href="resources/css/section.css"/>
<script src="resources/scripts/jquery-3.7.1.min.js"></script>
<title>게시판</title>
</head>
<body>
	<div class="wrapper">
		<div id="mainWrapper">
			<%@ include file ="/resources/header/header.jsp" %>
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
								<a href="faqList.do">공지사항</a>
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
							<span class="tit">게시판</span>
						</div>
					</div>
					<form action="updateBoard.do" method="post">
						<input name="seq" type="hidden" value="${board.seq }"/>
						<table border="1">
							<tr>
								<td>제목</td><td><input name="title" type="text" value="${board.title }"/></td>
							</tr>
							<tr>
								<td>작성자</td><td>${board.id}</td>
							</tr>
							<tr>
								<td>내용</td><td><textarea name="content" cols="40" rows="10">${board.content }</textarea></td>
							</tr>
							<tr>
								<td>조회수</td><td>${board.hit }</td>
							</tr>
							<tr>
								<td colspan="2">
									<c:if test="${sessionScope.user.id ne null and sessionScope.user.id eq board.id}">
										<input type="submit" value="글 수정"/>
										<a href="deleteBoard.do?seq=${board.seq }">글삭제</a>	
									</c:if>
								</td>
							</tr>
						</table>
						<!-- 
						<table border="1">
						  댓글 목록
							<tr>
								<td colspan="2">
									<h2>댓글 목록</h2>
									<c:forEach items="${commentList}" var ="comment">
										<div>
											<p>${comment.writer }</p>
											<p>${comment.content }</p>
										</div>
									</c:forEach>
								</td>
							</tr>
						</table>
						-->
						<a href="insertBoardPage.do"></a>
						<a href="getBoardList.do">글 목록</a>
					</form>
				</div>
			</div>
		</div>		
	</div>		
</body>
</html>