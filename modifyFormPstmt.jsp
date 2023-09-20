<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>modifyFormPstmt.jsp</title>
</head>
<body>
	<form action="modify.jsp" method = "post">
		<table border="1">
			<tr> 
				<td>수정할 보드 번호(숫자)를 입력해주세요</td>
				<td> 
				<input type = "text" name = "BOARDNUM"> <br>
				</td>
			</tr>
			<tr>
				<td>수정할 제목을 입력해주세요</td> 
				<td> 
				<input type = "text" name = "TITLE"> <br>
				</td>
			</tr>
			<tr>
				<td>수정할 내용을 입력해주세요</td> 
				<td> 
				<input type = "text" name = "CONTENT"> <br>
				</td>
			</tr>
			<tr>
				<td>수정할 작성자명을 입력해주세요</td> 
				<td> 
				<input type = "text" name = "WRITER"> <br>
				</td>
			</tr>
			<tr> 
				<td> 
					<input type = "submit" value = "게시글 수정">
				</td>
				<td>
					<input type = "reset" value = "취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>