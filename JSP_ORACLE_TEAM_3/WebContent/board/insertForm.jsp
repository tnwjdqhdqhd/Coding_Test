<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>insertForm</title>
<style type="text/css">
	form{position: relative;}
	.num1{width: 50%; }
	.num2{position: absolute; left: 40%;}
	input{width: 99%;}
</style>
</head>
<body>
	<form action="insert.jsp" method="post">
		<table border="1" class = "num1">
			<tr>
				<td>글 번호 </td>
				<td> <input type = "text" name = "BOARDNUM">
			</tr>
			<tr>
				<td>제목 </td>
				<td> <input type = "text" name = "TITLE">
			</tr>
			<tr>
				<td>내용</td>
				<td> <input type = "text" name = "CONTENT">
			</tr>
			<tr>
				<td>작성자</td>
				<td> <input type = "text" name = "WRITER">
			</tr>
		</table>
		<table class = "num2">
			<tr> 
				<td> <input type = "submit" value="등록">
				<td> <input type = "reset" value="다시 작성">
			</tr>
		</table>
	</form>
</body>
</html>