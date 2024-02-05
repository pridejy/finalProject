<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %> 
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/admin.css">
  <script src="resources/scripts/jquery-3.7.1.min.js"></script>
  <script src="resources/scripts/admin.js"></script>
  <title>reservationList</title>
</head>
<body>
	<%@include file ="/resources/sidebar/sidebar.jsp" %>

	<div class="content">
	  <h1>boardList</h1>
	  <table>
	  	<thead>
	  		<tr>
	        	<th>순서</th>
		        <th>아이디</th>
		        <th>제목</th>
		        <th>내용</th>
		        <th>날짜</th>
		        <th>조회수</th>
		        <th>삭제</th>
	      	</tr>
    	</thead>
	    <tbody>
	    	<c:forEach var="board" items="${boardList }">
	    	<tr>
	        	<td>${board.seq}</td>
	        	<td>${board.id}</td>
		        <td>${board.title}</td>
		        <td>${board.content}</td>
		        <td>${board.regDate}</td>
		        <td>${board.hit}</td>
		        <td><a href="javascript:void(0);" onclick="deleteBoard(${board.seq}, '/boardList');">삭제</a>
	      	</tr>
	      	</c:forEach>
	      <!-- 다른 데이터 행 추가 -->
	    </tbody>
	  </table>
	</div>
</body>
</html>