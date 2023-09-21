<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>

	<!-- * 회원비밀번호 찾기 쿼리문 힌트 [MEMBER 테이블 MEMBERID 변수(memberId), EMAIL 변수(email)로 가정함]

String query = "SELECT PASSWORD FROM MEMBER WHERE MEMBERID = '"+memberId+"'+ AND EMAIL = " + email; -->
	<form action="SearchpwInf.jsp" method="post">
	
	
		<table border="1">
			<tr>
				<td>아이디를 입력하세요</td>
				<td><input type="text" name="MemberId" size="10"></td>
			</tr>
			<tr>
				<td>이메일를 입력하세요</td>
				<td><input type="text" name="Email" size="10"></td>
			</tr>
			<tr>
				<td><input type="submit" value="조회"></td>
				<td><input type="reset" value="취소"></td>
			</tr>		
		</table>	
	
	</form>
</body>
</html>