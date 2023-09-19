<%@page import="java.sql.ResultSet"%>
<%@page import="javax.xml.transform.Result"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String boardNum = request.getParameter("BOARDNUM");
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
		Class.forName("com.mysql.cj.jdbc.Driver");
	    System.out.print("드라이버 로딩 성공!");
	    Connection conn = null;
	    Statement stmt = null;
	    ResultSet rs = null;
	    
	    try{
	    	 String jdbcDriver = "jdbc:mysql://localhost:3306/jspmysqlteam3?characterEncoding=UTF-8&serverTimezone=UTC";
	         String dbUser = "jspmysqlteamuser3";
	         String dbPass = "jspmysqlteampw";
	         System.out.print("DB 접속 성공!");
	         
	      	 // select * from member where MEMBERID = 'jang';
	         String query = "select * from board where BOARDNUM = '"+boardNum+"'";
	         
	         // 2. 데이터베이스 커넥션 생성
	         conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	         
	         // 3. Statement 생성
	         stmt = conn.createStatement();
	         
	         // 4. 쿼리문 실행
	         rs = stmt.executeQuery(query);
	         
	      // 5. 쿼리문 실행 결과 출력
	         if(rs.next()){
	    %>
	    	 <table border="1">
	    	 	<tr>
	    	 		<td>아이디</td>
	    	 		<td><%= boardNum %></td>
	    	 	</tr>
	    	 	<tr>
	    	 		<td>암호</td>
	    	 		<td><%= rs.getString("TITLE") %></td>
	    	 	</tr>
	    	 	<tr>
	    	 		<td>이름</td>
	    	 		<td><%= rs.getString("CONTENT") %></td>
	    	 	</tr>
	    	 	<tr>
	    	 		<td>이메일</td>
	    	 		<td><%= rs.getString("WRITER") %></td>
	    	 	</tr>
	    	 </table>
	    	 <form action="../index.jsp">
			 	<input type="submit" value="처음으로!">
			 </form>
	    	 <%
	         }else{
	        	 
	    	 %>
	    	 <form action="../index.jsp">
	    	 	<%= boardNum %>에 해당하는 정보가 존재하지 않습니다! <br>
	    	 	<input type="submit" value="처음으로!">
	    	 </form>   	 
	    <%	    	 
	         }
	      } 
	         catch(SQLException ex) {
	         out.println(ex.getMessage());
	         ex.printStackTrace();
	      }
	   %>

</body>
</html>