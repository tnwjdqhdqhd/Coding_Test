<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String inputNum = request.getParameter("number");
	String inputTitle = request.getParameter("title");
	String inputContent = request.getParameter("content");
	String inputWriter = request.getParameter("writer");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WebContent 폴더 안에 board 폴더 안에 insert.jsp 소스 코딩</title>
</head>
<body>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("드라이버 로딩 성공");
		Connection conn = null;
		PreparedStatement pstmtTitle = null;
		PreparedStatement pstmtContent = null;
		
		Throwable occuredException = null;
	   	
		try{
			String jdbcDriver = "jdbc:mysql://localhost:3306/jspmysqlteam3?characterEncoding=UTF-8&serverTimezone=UTC";
			String dbUser = "jspmysqlteamuser3";
			String dbPass = "jspmysqlteampw";
			System.out.println("DB 접속 성공");
			
			int num = Integer.parseInt(inputNum);
			
			// 2. 데이터베이스 커넥션 생성
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			// 오토커밋(자동커밋) 처리를 false로 설정함.
			conn.setAutoCommit(false);
			
			String query = "insert into board values(?, ?, ?, ?)";
			
			// 3. PreparedStatement 생성
			pstmtTitle = conn.prepareStatement(query);
			pstmtTitle.setInt(1, num);
			pstmtTitle.setString(2, "제목= " + inputTitle);
			pstmtTitle.setString(3, "내용= " + inputContent);
			pstmtTitle.setString(4, "작성자= " + inputWriter);
			
			// 4. 쿼리문 실행
			pstmtTitle.executeUpdate();
						
			// 만약에 error 파라미터(매개변수)가 존재할 경우, 익셉션(예외 처리)을 발생시킵니다!
			if(request.getParameter("error") != null){
				throw new Exception("의도적 익셉션 발생!");
			}
						
			conn.commit(); // 세션 연결 상태에서 커밋 처리를 합니다!
		%>
			게시글을 삽입 했습니다! <br> <br>
			<form action="../index.jsp">
				<input type="submit" value="처음으로!">
			</form>
		<%
		} catch(Throwable e){
			if(conn != null){
				try{
					// 트랜잭션 처리 과정에서 정상 처리 완료가 아닌
					// 예외 상황이 발생하면 롤백 처리를 합니다.
					conn.rollback();
				} catch(SQLException ex){
					out.println(ex.getMessage());
					ex.printStackTrace();
				}
			} // 앞서 롤벡 처리한 익셉션을 occuredException에 할당 처리 합니다!
				occuredException = e;
		} finally{
		      // 6. 사용한 Statement 종료
		      if(pstmtTitle != null) try{
		    	  pstmtTitle.close();
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
		
		<%
			if(occuredException != null){
		%>
				에러가 발생했습니다. ㅠㅠ <%= occuredException.getMessage() %> <br><br>
		<%
			} else {
		%>
				트랜잭션 데이터가 성공적으로 데이터베이스에 Insert 되었습니다!
		<%
			}
		%>

</body>
</html>