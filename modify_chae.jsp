<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 인코딩 글자를 한글로 바꿔준다. 
	request.setCharacterEncoding("utf-8");
	
	// 아까 insertItem(프론트)에서 만든 name 속성을 가져온다. 
	String boardNum = request.getParameter("BOARDNUM");
	String title = request.getParameter("TITLE");
	String content = request.getParameter("CONTENT");
	String writer = request.getParameter("WRITER");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<%
	// DB와 연결을 위한 연결 객체 생성 및 초기화
	Connection con = null;
	// DB처리 SQL 쿼리문을 담기 위한 stmt 변수 생성 및 초기화
	PreparedStatement pstmt = null;
	// 1. 드라이버 로딩
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("드라이버 로딩 성공!");
					
		// 2. 드라이버 매니저를 이용해서 DB 접속하고 Connection 객체 얻어오기
		// 오라클 Thin 드라이브 의미
		// 오라클 드라이버에는 Thin 드라이버와 OCI 드라이버가 있습니다.
		// Thin 드라이버는 자바 언어로만 구현된 JDBC 드라이버로서 JDK만 설치되어 있으면			        // 어디서든 사용할 수 있습니다. 반면에 OCI 드라이버는 네이티브(Native) 모듈을 사용하는
		// JDBC 드라이버로서 해당 모듈을 설치해주어야만 사용할 수 있습니다
		// 위에 오라클 JDBC URL을 보면 jdbc:oracle:thin과 같이 'thin'이 포함되어 있는데,
		// 이는 Thin 드라이버를 사용해서 연결함을 뜻합니다.
		// url = "jdbc:oracle:thin:@서버주소:port번호:SID(전역데이터베이스이름)";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";					
		con = DriverManager.getConnection(url, "jsporacleteamuser3", "jsporaclepw");
		System.out.println("DB 접속 성공!");
		
		
		
		String query = "update BOARD set title = ?, content = ?, writer = ? where boardNum = ?";
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, writer);
		pstmt.setString(4, boardNum);
		
		int resultInsert = pstmt.executeUpdate();
		System.out.println(resultInsert);
		if(resultInsert == 0){
	%>
			<%= boardNum %>번은 존재하지 않는 숫자입니다.
			<form action="modifyForm_chae.jsp">
				<input type = "submit" value = "다시 입력하기">
			</form>	
	<%
        }else{
    %>   		
         	<%= resultInsert %>건의 데이터가 수정 되었습니다!
         	<form action="../index.jsp">
				<input type = "submit" value = "처음으로 돌아가기">
			</form>
	<%
		}
	}catch (ClassNotFoundException e) {
		e.printStackTrace(); 
	}catch(SQLException e){
		e.printStackTrace();
	}finally {
		try {
			if(pstmt != null) {
				pstmt.close();
			}
			if(con != null) {
				con.close();
			}
		} catch (SQLException e) {
			System.out.println("예외가 발생했습니다.");
		}
	}
	%>

</body>
</html>