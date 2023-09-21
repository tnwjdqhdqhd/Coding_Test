<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>orcle_member_team</title>
</head>
<body>
	<!-- 1단계 : 회원가입 -->
	<form action="insertForm.jsp">
		<input type="submit" value="회원가입_조수정"> <br> <br>
	</form>
	<!-- 2단계 : 회원조회 -->
	<form action="selectForm.jsp">
		<input type="submit" value="회원아이디찾기_김수진"> <br> <br>
		<input type="submit" value="회원비밀번호찾기_김용학"> <br> <br>
		<input type="submit" value="회원비밀번호찾기_박혜림"> <br> <br>
	</form>
	<!-- 3단계 : 게시글 수정 -->
	<form action="modifyForm.jsp">
		<input type="submit" value="회원정보수정_어예진"> <br> <br>
	</form>
	<!-- 4단계 : 게시글 삭제 -->
	<form action="deleteForm.jsp">
		<input type="submit" value="계정 삭제_채승병"> <br> <br>
	</form>
	
</body>
</html>