<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 프론트앤드 웹페이지에서 파라미터로 아이디를 전달받으면 MEMBER 테이블로부터
          해당 회원 정보를 읽어와서 화면으로 출력하는 JSP 웹 프로그램을 제작해 봅니다. -->
<%
	request.setCharacterEncoding("utf-8");

	String WRITER = request.getParameter("WRITER");
%>        
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WebContent 폴더 안에 DeleteMemberPstmt.jsp 소스 코딩</title>
</head>
<body>
		
	<%
		 // 1. JDBC 드라이버 로딩
	   	// MySQL DB 8아래 버전은 com.mysql.jdbc.Driver을 사용했지만,
	   	// MySQL DB 8이상 버전은 com.mysql.cj.jdbc.Driver 로 사용합니다.
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.print("드라이버 로딩 성공!");
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			String jdbcDriver = "jdbc:mysql://localhost:3306/jspmysqlteam3?characterEncoding=UTF-8&serverTimezone=UTC";
			String dbUser = "jspmysqlteamuser3";
			String dbPass = "jspmysqlteampw";
			System.out.print("DB 접속 성공!");
			
			// delete from BOARD where BOARDNUM = 'lee';
			String query = "delete from BOARD where BOARDNUM =?";
			
			// 2. 데이터베이스 커넥션 생성
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			// 3. Statement 생성
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, WRITER);
			
			// 4. 쿼리문 실행
			int resultDelete = pstmt.executeUpdate();
			
		%>
			<%
			// 5. 쿼리문 실행 결과 출력
				if(resultDelete == 0){
			%>
				<%= WRITER  %>는 존재하지 않는 글 입니다!
			<%
				} else {
			%>					
				<%= resultDelete %> 건의 데이터가 삭제 되었습니다!	<br><br>
			<%
				}
			%>
			
		<%
		} 
			catch(SQLException ex) {
			out.println(ex.getMessage());
			ex.printStackTrace();
		} 	finally{
		      // 6. 사용한 Statement 종료
		      if(pstmt != null) try{
		    	  pstmt.close();
		      } catch(SQLException ex){
		         ex.printStackTrace();
		      }
		      
		      // 7. 커넥션 종료
		      if(conn != null) try{
		         conn.close();
		      } catch(SQLException ex){
		         ex.printStackTrace();
		      }
		   }
	%>
</body>
</html>