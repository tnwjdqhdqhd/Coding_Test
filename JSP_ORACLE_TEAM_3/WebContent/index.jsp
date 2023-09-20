<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>jspOracle.jsp</title>
</head>
<body>
	<!-- 1단계 : 게시글 등록 -->
	<form action="board/insertForm.jsp">
		<input type="submit" value="게시글 등록_김수진"> <br> <br>
	</form>
	<!-- 2단계 : 게시글 번호 입력 상세조회 -->
	<form action="board/viewForm.jsp">
		<input type="submit" value="게시글 번호 입력 상세 조회_조수정"> <br> <br>
	</form>
	<form action="board/inquiryForm.jsp">
		<input type="submit" value="게시글 번호 입력 상세 조회_박혜림"> <br> <br>
	</form>
	<!-- 3단계 : 게시글 수정 -->
	<form action="board/modifyFormPstmt.jsp">
		<input type="submit" value="게시글 수정_김용학"> <br> <br>
	</form>
	<form action="board/modifyForm_chae.jsp">
		<input type="submit" value="게시글 수정_채승병"> <br> <br>
	</form>
	<!-- 4단계 : 게시글 삭제 -->
	<form action="board/deleteForm.jsp">
		<input type="submit" value="게시글 삭제_어예진"> <br> <br>
	</form>
	
</body>
</html>