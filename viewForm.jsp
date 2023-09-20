<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>viewForm.jsp</title>
</head>
<body>

	<form action="view.jsp" method="post">
		
		<table border = "1">
			<tr>
				<td>제목</td>
				<td><input type="text" name="TITLE" size="40"></td>
			</tr>
				<td colspan="2"><input type="submit" value="조회"></td>
			</tr>
		</table>
	
	</form>
</body>
</html>