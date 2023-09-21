<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>idSelectForm.jsp</title>
</head>
<body>
	<form action="idSelect.jsp" method="post">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="NAME" size="10"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="EMAIL" size="10"></td>
			</tr>
			<tr>
				<td> <input type="submit" value="아이디 찾기"></td>
				<td> <input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>