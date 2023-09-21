<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("NAME");
	String email = request.getParameter("EMAIL");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>idSelect.jsp</title>
</head>
<body>
	<%
	Class.forName("oracle.jdbc.OracleDriver");
	System.out.println("드라이버 로딩 성공!");
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbUser = "jsporaclememberuser3";
		String dbPass = "jsporaclepw";
		System.out.println("DB접속 성공");
		
		// String query = "SELECT MEMBERID FROM MEMBER WHERE NAME = '"+name+"'+ AND EMAIL = " + email;
		// select MEMBERID from member where NAME = '조수정' and EMAIL = 'crystal@gmail.com';
		String query = "select MEMBERID from member where NAME = ? and EMAIL = ?";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		
		int resultInsert = pstmt.executeUpdate();
		ResultSet rs = pstmt.executeQuery();
		String memberId = null;
		while(rs.next()){
			memberId = rs.getString("MEMBERID");
		}
		%>
		
		<%
		if(resultInsert == 0){
		%>
			입력하신 정보가 잘못됐습니다.
			<form action="idSelectForm.jsp">
				<input type = "submit" value = "다시 입력하기">
			</form>	
		<%
		}else{
		%>

			<table border="1">
				<tr>
					<td>아이디</td>
					<td><%=memberId %></td>
				</tr>
			</table>
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