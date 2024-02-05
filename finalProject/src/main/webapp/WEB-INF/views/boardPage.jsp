<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/board.css"/>
<link rel="stylesheet" href="resources/css/section.css"/>
<script src="resources/scripts/jquery-3.7.1.min.js"></script>
<script src="resources/scripts/search.js"></script>
<title>게시판</title>
</head>
<body>
	<div class="wrapper">
		<div id="mainWrapper">
			<%@ include file ="/resources/header/header.jsp" %>
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
								<a href="getfaqBoardList.do">공지사항</a>
							</li>
							<li>
								<a href="#">이벤트</a>
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
							<span class="tit">게시판</span>
						</div>
					</div>
					<div class="board-wrap">
						<form method="get" action="search.do" class="search-box">
							<select name="searchCondition">
								<option value="ALL">전체</option>
								<option value="TITLE">제목</option>
								<option value="CONTENT">내용</option>
							</select>
							<input name="searchKeyword" type="text" placeholder="검색어를 입력하세요"/>
							<input type="submit" class ="search_Btn" value="검색"/>
						</form>
					</div>
					<div class="board-container">
					    <div class="board-row board-header">
					        <div class="board-cell">번호</div>
					        <div class="board-cell">제목</div>
					        <div class="board-cell">작성자</div>
					        <div class="board-cell">등록일</div>
					        <div class="board-cell">조회수</div>
					    </div>
					    <c:forEach items="${boardList}" var="board">
					        <div class="board-row">
					            <div class="board-cell">${board.seq}</div>
					            <div class="board-cell"><a href="getBoard.do?seq=${board.seq}">${board.title}</a></div>
					            <div class="board-cell">${board.id}</div>
					            <div class="board-cell">${board.regDate}</div>
					            <div class="board-cell">${board.hit}</div>
					        </div>
					    </c:forEach>
					</div>
					<br>
					<a href="insertBoardPage.do">새글 등록</a>
					<c:set var="curPage" value="${param.curPage }"/>
					<c:if test="${curPage eq null}">
					    <c:set var="curPage" value="1"/>
					</c:if>
					<c:forEach var="i" begin="1" end="${totalPage}" step="1">
					    <c:choose>
					        <c:when test="${i eq curPage}">
					            <a href="boardPage.do?curPage=${i}">${i}</a>
					        </c:when>
					        <c:otherwise>
					            <a href="boardPage.do?curPage=${i}">${i}</a>
					        </c:otherwise>
					    </c:choose>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>