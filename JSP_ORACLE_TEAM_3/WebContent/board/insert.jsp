<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

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
	Class.forName("oracle.jdbc.OracleDriver");
	System.out.println("드라이버 로딩 성공!");
	Connection conn = null;
	Statement stmt = null;
	
	try{
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbUser = "jsporacleteamuser3";
		String dbPass = "jsporaclepw";
		System.out.println("DB접속 성공");
		
		// insert into board values('jang', '1234', '장나라', 'jang@gmail.com');
		String query = "insert into board values('"+boardNum+"', '"+title+"', '"+content+"', '"+writer+"')";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		// 3. Statement 생성
		stmt = conn.createStatement();
		
		// 4. 쿼리문 실행
		int resultInsert = stmt.executeUpdate(query);
		
	%>
		<%= resultInsert %>건의 데이터가 추가 되었습니다. <br>
		<form action="../index.jsp">
			<input type = "submit" value = "처음으로 돌아가기">
		</form>	
	<%	
	}catch(SQLException ex){
		out.println(ex.getMessage());
		ex.printStackTrace();
	}finally{
	// finally는 catch가 있든 없든 실행된다. 
	      // 6. 사용한 Statement 종료
	
	      if(stmt != null) try{
	         stmt.close();
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