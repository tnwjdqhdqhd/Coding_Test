<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>findFormPstmt.jsp</title>
</head>
<body>
	 <form action="findPstmt.jsp" method="post">
		<table border="1">
			<tr>
				<td>아이디입력</td>
				<td><input type="text" name="MEMBERID" size="40" value=""></td>
				<td rowspan=2><input type="submit" value="비밀번호 찾기"></td>
			</tr>
			<tr>
				<td>이메일입력</td>
				<td><input type="text" name="EMAIL" size="40" value=""></td>
			</tr>	
		</table>	
		</form>
</body>
</html>