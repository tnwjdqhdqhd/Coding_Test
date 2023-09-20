<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String boardNum = request.getParameter("BOARDNUM");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	
	
	<%
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = null;
		Statement stmt = null;
		
		Throwable occuredException = null;
		
		try{
			String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbUser = "jsporacleteamuser3";
			String dbPass = "jsporaclepw";
			System.out.println("DB 접속 성공");
			
			String query = "delete from BOARD where boardnum = '"+boardNum+"'";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			conn.setAutoCommit(false);
			
			stmt = conn.createStatement();
			
			int resultDelete = stmt.executeUpdate(query);
			
			if(request.getParameter("error") != null){
				throw new Exception("의도적 익셉션 발생!");
			}
			
			conn.commit();
	%>
	<%
		if(resultDelete == 0){
	%>
		<%= boardNum%>는 존재하지 않는 제목입니다! <br><br>
		<form action="deleteForm.jsp">
			<input type = "submit" value = "다시 입력하기">
		</form>	
	<%
		} else {
	%>
		<%= resultDelete %>건의 데이터가 삭제되었습니다! <br><br>
		
		<form action="../index.jsp">
			<input type="submit" value="처음으로!">
		</form>
	<%
		}
	} catch(Throwable e) {
		if(conn != null ){
			try{
				conn.rollback();
			} catch(SQLException ex){
				out.println(ex.getMessage());
				ex.printStackTrace();
			}
		}
		occuredException = e;
	} finally{
		if(stmt != null) try{
			stmt.close();
		} catch(SQLException ex){
			ex.printStackTrace();
		}
		
		if(conn != null) try{
			conn.close();
		} catch(SQLException ex){
			ex.printStackTrace();
		}
	}
	%>
	
	
</body>
</html>