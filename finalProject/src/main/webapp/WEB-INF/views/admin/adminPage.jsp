<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .admin-container {
            text-align: center;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            max-width:800px !important;
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
        }

        .admin-options {
            margin-top: 20px;
        }

        .admin-options a {
            display: block;
            margin: 10px;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="admin-container">
        <h1>Admin Page</h1>
        <div class="admin-options">
            <a href="userList.do">User List</a>
            <a href="roomList.do">Room List</a>
            <a href="reservation.do">Reservation List</a>
            <a href="boardList.do">board List</a>
            <a href="faqBoardList.do">faq List</a>
            <!-- 여기에 추가적인 옵션을 계속해서 추가할 수 있습니다. -->
        </div>
    </div>
</body>
</html>