<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 답변</title>
</head>
<body>
	<form method="post" action="replyOK.do">
		<table border="1">
			<tr>
				<td>작성자</td><td>${ }</td>
			</tr>
			<tr>
				<td>제목</td><td><input type="text" name="title" value="re: ${dto.title}" /></td>
			</tr>
			<tr>
				<td>내용</td><td><textarea name="content" cols="100" rows="15" autofocus>&#10&#13re:</textarea>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="답변">
					<a href="getBoardList.do">목록</a>
				</td>
			</tr>
		</table>
		<input type="hidden" name="seq" value="${ }"/>
		<input type="hidden" name="id" value=""/>
		<input type="hidden" name="groupNum" value=""/>
		<input type="hidden" name="stepNum" value=""/>
		<input type="hidden" name="indentNum" value=""/>
	</form>
</body>
</html>