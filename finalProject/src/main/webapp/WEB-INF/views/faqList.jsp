<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="resources/scripts/jquery-3.7.1.min.js"></script>
<title>공지사항</title>
</head>
<body>
	<div class="wrapper">
		<div id="mainWrapper">
			<%@ include file="/resources/header/header.jsp" %>
			<div id="container">
				<div id="headerImg">
					<div class="headerTitle">
						<span>News & Event</span>
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
								<a href="board.do">게시판</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="container">
					<div class="w1200">
						<div id="titleWrap">
							<span class="tit">공지사항</span>
							<span class="subtit">썬크루즈 뉴스 & 이벤트</span>
						</div>
					</div>
					<div class="board-wrap">
						<fieldset class="search-box">
							<select name="searchCondition">
								<option value="TITLE">제목</option>
								<option value="CONTENT">내용</option>
							</select>
							<input name="searchKeyword" type="text"/>
							<input type="submit" value="검색"/>
						</fieldset>
					</div>
					<div class="board-container">
					    <div class="board-row board-header">
					        <div class="board-cell">NO</div>
					        <div class="board-cell">제목</div>
					        <div class="board-cell">등록일</div>
					    </div>
					    
					    <c:forEach items="${faqBoardList}" var="board">
					        <div class="board-row">
					            <div class="board-cell">${faqBoardList.seq}</div>
					            <div class="board-cell"><a href="getBoard.do?seq=${faqBoardList.seq}">${faqBoardList.title}</a></div>
					            <div class="board-cell">${faqBoardList.regDate}</div>
					        </div>
					    </c:forEach>
					</div>
					<br>
				</div>
			</div>
		</div>
	</div>
</body>
</html>