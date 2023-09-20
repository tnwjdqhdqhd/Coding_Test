<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("TITLE");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>view.jsp</title>
</head>
<body>

	<%
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("드라이버 로딩 성공");
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbUser = "jsporacleteamuser3";
			String dbPass = "jsporaclepw";
			System.out.println("DB접속 성공!");
			
			String query = "select * from board where TITLE = '"+title+"'";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(query);
			
			if(rs.next()){
		%>	
		
		<table border="1">
			<tr>
				<td>게시번호</td>
				<td><%= rs.getString("BOARDNUM") %>
			</tr>
			<tr>
				<td>제목</td>
				<td><%= title %>
			</tr>
			<tr>
				<td>내용</td>
				<td><%= rs.getString("CONTENT") %>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%= rs.getString("WRITER") %>
			</tr>
		</table>	<br>
		<form action="../index.jsp">
			<input type = "submit" value = "처음으로 돌아가기">
		</form>	
		
		<%
			}else{
		%>
		<%= title %> 에 해당하는 정보가 존재하지 않습니다!
		<form action="viewForm.jsp">
			<input type = "submit" value = "다시 입력하기">
		</form>	
	<%
		}
	}
	catch(SQLException ex){
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally{
		if(rs != null) try{
			rs.close();
		} catch(SQLException ex){
			ex.printStackTrace();
		}
		if(stmt != null) try{
			stmt.close();
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