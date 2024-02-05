<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %> 
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/admin.css">
  <title>reservationList</title>
</head>
<body>
	<%@include file ="/resources/sidebar/sidebar.jsp" %>

	<div class="content">
	  <h1>reservationList</h1>
	  <table>
	  	<thead>
	  		<tr>
	        	<th>reservation_id</th>
		        <th>member_id</th>
		        <th>room_id</th>
		        <th>checkin_date</th>
		        <th>checkout_date</th>
		        <th>adults</th>
		        <th>created_at</th>
		        <th>child</th>
		        <th>guest</th>
		        <th>guest_phone</th>
	      	</tr>
    	</thead>
	    <tbody>
	    	<c:forEach var="reservation" items="${reservationList }">
	    	<tr>
	        	<td>${reservation.reservation_id}</td>
	        	<td>${reservation.member_id}</td>
		        <td>${reservation.room_id}</td>
		        <td>${reservation.checkin_date}</td>
		        <td>${reservation.checkout_date}</td>
		        <td>${reservation.adults}</td>
		        <td>${reservation.created_at}</td>
		        <td>${reservation.child}</td>
		        <td>${reservation.guest}</td>
		        <td>${reservation.guest_phone}</td>
	      	</tr>
	      	</c:forEach>
	      <!-- 다른 데이터 행 추가 -->
	    </tbody>
	  </table>
	</div>
</body>
</html>