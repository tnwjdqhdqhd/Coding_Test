<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String memberId = request.getParameter("id");
	String pw = request.getParameter("password");
	String memberName = request.getParameter("name");
	String memberEmail = request.getParameter("email");
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
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("드라이버 로딩 성공!");
		Connection conn = null;
		Statement stmt = null;
		
		Throwable occuredException = null;
		
		try{
			String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbUser = "jsporaclememberuser3";
			String dbPass = "jsporaclepw";
			System.out.println("DB 접속 성공!");
			
			String query = "update MEMBER set NAME = '"+memberName+"', EMAIL ='"+memberEmail+"' where MEMBERID = '"+memberId+"' and PASSWORD ='"+pw+"'";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			stmt = conn.createStatement();
			
			conn.setAutoCommit(false);
			
			int resultUpdate = stmt.executeUpdate(query);
						
			if(request.getParameter("error") != null){
				throw new Exception("의도적 익셉션 발생!");
			}
						
			conn.commit(); 
	%>
			
			<%
			if(resultUpdate == 0){ 
			%>
				아이디와 비밀번호가 일치하지 않습니다! <br><br>
				
			<%
			
			} else {
			%>
				<%= resultUpdate %>건의 회원정보가 수정 되었습니다! <br><br>
				
				<div>
					<form action="../index.jsp">
						<input type="submit" value="처음으로!">
					</form>
				</div>
			<%
			}
			%>
			
		<%			
		} catch(Throwable e){
			if(conn != null){
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