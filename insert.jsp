<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	String memberID = request.getParameter("MEMBERID");
	String password = request.getParameter("PASSWORD");
	String name = request.getParameter("NAME");
	String email = request.getParameter("EMAIL");

%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Isert.jsp</title>
</head>
<body>
	
	<%
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("드라이브 로딩 성공!");
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbUser = "jsporaclememberuser3";
			String dbPass = "jsporaclepw";
			System.out.println("DB접속 성공!");
			
			String query = "insert into member values(?, ?, ?, ?)";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberID);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			
			int resultInsert = pstmt.executeUpdate();
	%>
		<%= resultInsert %> 건의 데이터가 추가되었습니다!
			<div>
				
				<form action="index.jsp">
					<input type="submit" value="처음으로!">
				</form>
			</div>
	<% 
	}
	catch(SQLException ex){
		out.println(ex.getMessage());
		ex.printStackTrace();
	}finally{
		if(pstmt != null)try{
			pstmt.close();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		if(conn != null)try{
			conn.close();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
	}
	
	%>
</body>
</html>