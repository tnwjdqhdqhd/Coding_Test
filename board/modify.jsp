<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
    <%
    	request.setCharacterEncoding("utf-8");
    
    	String boardnum = request.getParameter("BOARDNUM");
    	String title = request.getParameter("TITLE");
    	String content = request.getParameter("CONTENT");
    	String writer = request.getParameter("WRITER");
    %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Modify.jsp</title>
</head>
<body>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("드라이버 로딩 성공!");
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			String jdbcDriver = "jdbc:mysql://localhost:3306/jspmysqlteam3?characterEncoding=UTF-8&serverTimezone=UTC";
			String dbUser = "jspmysqlteamuser3";
			String dbPass = "jspmysqlteampw";
			System.out.println("DB 접속 성공!");
			
			String query = "update board set boardnum = ?, title = ?, content = ?, writer = ? ";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, boardnum);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.setString(4, writer);
			
			int resultUdate = pstmt.executeUpdate();
	%>
		<%
			if(resultUdate == 0){
		%>
			<%= boardnum %> 는 존재하지 않는 글입니다!
		<%
			}else{
		%>
			<%= resultUdate %> 건의 게시글을 수정하였습니다! <br> <br>
			<div>
				
				<form action="../index.jsp">
					<input type="submit" value="처음으로!">
				</form>
			</div>
			
		<%
			}	
		%>
		
		<%
		}catch(SQLException ex){
			out.println(ex.getMessage());
			ex.printStackTrace();
		}finally{
			if(pstmt != null)try{
				pstmt.close();
			}catch(SQLException ex){
				ex.printStackTrace();
			}
			
			if(conn != null) try{
				conn.close();
			}catch(SQLException ex){
				ex.printStackTrace();
			}
		}
		
%>
	
</body>
</html>
	
	
	
	
