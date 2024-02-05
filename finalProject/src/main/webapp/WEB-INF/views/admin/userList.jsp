<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %> 
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/admin.css">
  <title>Admin Page</title>
</head>
<body>
	<%@include file ="/resources/sidebar/sidebar.jsp" %>

	<div class="content">
	  <h1>Welcome to Admin Page</h1>
	  <table>
	  	<thead>
	  		<tr>
	        	<th>ID</th>
		        <th>Name</th>
		        <th>phone</th>
		        <th>Ename</th>
		        <th>Email</th>
		        <th>createdAt</th>
	      	</tr>
    	</thead>
	    <tbody>
	    	<c:forEach var="user" items="${userList }">
	    	<tr>
	        	<td>${user.id}</td>
	        	<td>${user.name }</td>
		        <td>${user.phone }</td>
		        <td>${user.ename }</td>
		        <td>${user.email }</td>
		        <td>${user.createdAt}</td>
	      	</tr>
	      	</c:forEach>
	      <!-- 다른 데이터 행 추가 -->
	    </tbody>
	  </table>
	</div>

</body>
</html>