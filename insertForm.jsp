<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert Form.jsp</title>
</head>
<body>
	
	<form action="insert.jsp" method="post">
		
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" name="MEMBERID" size="20" placeholder="아이디를 입력하세요"></td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td><input type="password" name="PASSWORD" size="20" placeholder="비밀번호를 입력하세요"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="NAME" size="20" placeholder="이름을 입력하세요"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="EMAIL" size="80" placeholder="이메일을 입력하세요"></td>
			</tr>
			<tr>
				<td><input type="submit" value="회원가입"></td>
				<td><input type="reset" value="회원가입 취소"></td>
			</tr>
			
		
		</table>
	
	</form>
	
</body>
</html>