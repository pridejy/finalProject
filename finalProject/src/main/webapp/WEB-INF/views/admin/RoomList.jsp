<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %> 
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/admin.css">
  <title>RoomPage</title>
</head>
<body>
	<%@include file ="/resources/sidebar/sidebar.jsp" %>

	<div class="content">
	  <h1>Welcome to Admin Page</h1>
	  <table>
	  	<thead>
	  		<tr>
	        	<th>room_id</th>
		        <th>room_size(㎡)</th>
		        <th>room_type</th>
		        <th>capacity</th>
		        <th>price</th>
		        <th>is_reserved</th>
	      	</tr>
    	</thead>
	    <tbody>
	    	<c:forEach var="room" items="${roomList }">
	    	<tr>
	        	<td>${room.room_id}</td>
	        	<td>${room.room_size}(㎡)</td>
		        <td>${room.room_type }</td>
		        <td>${room.capacity }</td>
		        <td>${room.price }</td>
		        <td>${room.is_reserved}</td>
	      	</tr>
	      	</c:forEach>
	      	<!--
	      	<tr>
	      		<td colspan="6">
	      			<a href="luxuryRoom.do">럭셔리 객실</a>
	      			<a href="juniorsuiteRoom.do">주니어 스위트 객실</a>
	      			<a href="cornerSuiteRom.do">코너 스위트 객실</a>
	      		</td>
	      	</tr>
	      	-->
	    </tbody>
	  </table>
	</div>

</body>
</html>