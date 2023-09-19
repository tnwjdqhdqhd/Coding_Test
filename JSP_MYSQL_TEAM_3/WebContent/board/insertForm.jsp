<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WebContent 폴더 안에 board 폴더 안에 insertForm.jsp 소스 코딩</title>
</head>
<body>
	<form action="insert.jsp" method="post">
		<table border="1">
			<tr>
				<td>게시글 번호</td>
				<td><input type="text" name="number" size="10" placeholder="게시글 번호를 입력해주세요"></td>
			</tr>
			<tr>
				<td>게시글 제목</td>
				<td><input type="text" name="title" size="40" placeholder="게시글 제목을 입력해주세요"></td>
			</tr>
			<tr>
				<td>게시글 내용</td>
				<td><input type="text" name="content" size="40" placeholder="게시글 내용을 입력해주세요"></td>
			</tr>
			<tr>
				<td>게시글 작성자</td>
				<td><input type="text" name="writer" size="10" placeholder="게시글 작성자 입력해주세요"></td>
			</tr>
			<tr>
				<td><input type="submit" value="게시글 등록"></td>
				<td><input type="reset" value="취소 "></td>
			</tr>
		</table>
	</form>
</body>
</html>