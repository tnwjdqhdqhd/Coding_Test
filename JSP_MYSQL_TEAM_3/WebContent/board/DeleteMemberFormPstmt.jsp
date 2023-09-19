<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WebContent 폴더 안에  DeleteMemberFormPstmt.jsp 소스 코딩</title>
</head>
<body>
	<form action="DeleteMemberPstmt.jsp" method="post">
	
		<table border="1">
			<tr>
				<td>게시글 삭제</td>
				<td><input type = "text" name="WRITER" size="10"></td>
			</tr>
			<tr>
				<td><input type="submit" value="삭제"></td>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>

	</form>
</body>
</html>