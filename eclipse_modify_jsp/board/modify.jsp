<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 인코등 글자를 한글로 바꿔준다. 
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
		// 1. JDBC 드라이버 로딩
		// MySQL DB 8아래 버전은 com.mysql.jdbc.Driver을 사용했지만,
		// MySQL DB 8이상 버전은 com.mysql.cj.jdbc.Driver 로 사용합니다.
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("드라이버 로딩 성공!");
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			String jdbcDriver = "jdbc:mysql://localhost:3306/jspmysqlteam3?characterEncoding=UTF-8&serverTimezone=UTC";
			String dbUser = "jspmysqlteamuser3";
			String dbPass = "jspmysqlteampw";
			System.out.println("DB접속 성공");
			
			// 1. update board set boardnum = '3', content = 'sdfsdf', writer = 'sdfsdf where title = 'sdfsf';
			String query = "update BOARD set title = ?, content = ?, writer = ? where boardNum = ?";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, writer);
			pstmt.setString(4, boardNum);
			
			int resultInsert = pstmt.executeUpdate();
			
		%>
			
				<%
				if(resultInsert == 0){
				%>
					<%= boardNum %>	존재하지 않는 번호입니다. 
					<form action="modifyForm.jsp">
						<input type = "submit" value = "다시 입력하기">
					</form>			
				<%	
				}else{
				%>
					<%=resultInsert %> 건의 데이터가 수정되었습니다. <br> <br>
					<form action="../index.jsp">
						<input type = "submit" value = "처음으로 돌아가기">
					</form>
				<%
				}
				%>
		<%	
		}catch(SQLException ex){
			out.println(ex.getMessage());
			ex.printStackTrace();
		}finally{
		// finally는 catch가 있든 없든 실행된다. 
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