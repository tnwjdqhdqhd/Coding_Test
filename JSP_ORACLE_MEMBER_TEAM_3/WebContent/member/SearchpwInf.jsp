<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 프론트앤드 웹페이지에서 파라미터로 아이디를 전달받으면 MEMBER 테이블로부터
          해당 회원 정보를 읽어와서 화면으로 출력하는 JSP 웹 프로그램을 제작해 봅니다. -->
<%
	String MemberId = request.getParameter("MemberId");
	String Email = request.getParameter("Email");
%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SearchpwInf.jsp</title>
</head>
<body>

	<%
		// 1. JDBC 드라이버 로딩
		// MySQL DB 8아래 버전은 com.mysql.jdbc.Driver을 사용했지만,
		// MySQL DB 8이상 버전은 com.mysql.cj.jdbc.Driver 로 사용합니다.
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("드라이버 로딩 성공!");
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// * 회원비밀번호 찾기 쿼리문 힌트 [MEMBER 테이블 MEMBERID 변수(memberId), EMAIL 변수(email)로 가정함]
	//SELECT PASSWORD FROM MEMBER WHERE MEMBERID = 'jangnana' AND EMAIL = 	'abc@naver.com';
		
		try{
			String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbUser = "jsporaclememberuser3";
			String dbPass = "jsporaclepw";
			System.out.println("DB 접속 성공!");
			
			// select * from board where boardNum = '230920';
	String query = "SELECT PASSWORD FROM MEMBER WHERE MEMBERID  = ? AND EMAIL = ?";
	
			// 2. 데이터베이스 커넥션 생성
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			// 3. Statement 생성
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, MemberId);
			pstmt.setString(2, Email);
			
			// 4. 쿼리문 실행
	         rs = pstmt.executeQuery();
	         
	         // 5. 쿼리문 실행 결과 출력
	         if(rs.next()){
	      %>
	         귀하의 비밀번호는 <%= rs.getString("PASSWORD") %>입니다!
	         <div>
				
				<form action="../index.jsp">
					<input type="submit" value="처음으로!">
				</form>
			 </div>
	         <%
	            } else{            
	         %>
	         
	         귀하의 계정 정보가 일치하지 않습니다!
	        <div>
				
				<form action="../index.jsp">
					<input type="submit" value="처음으로!">
				</form>
			</div>
	      <%            
	         }         
	      }    catch(SQLException ex) {
	         out.println(ex.getMessage());
	         ex.printStackTrace();
	      }   finally{
	         // 6. 사용한 Statement 종료         
	         if(rs != null) try{
	            rs.close();
	         } catch(SQLException ex){
	            ex.printStackTrace();
	         }
	         
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