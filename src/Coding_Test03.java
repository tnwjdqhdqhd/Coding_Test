import java.util.Scanner;

/*
Q3. 배열을 활용하여, Scanner 클래스 활용 아이디를 입력 받아서
         지정된 아이디와 일치하면 다음 결과 내용과 같이
         로그인 성공 메시지가 나타나는 자바 프로그램을 제작해 봅니다.

   [첫번째 아이디 입력 : 결과 내용]
       아이디를 입력해 주세요 ==> 장나라
       장나라님 환영합니다.

   [두번째 아이디 입력 : 결과 내용]
       아이디를 입력해 주세요 ==> 김희선
       아이디가 존재하지 않습니다.
*/

public class Coding_Test03 {
	public static void main(String[] args) {

		//내가 푼 풀이
//	Scanner scan = new Scanner(System.in);
//	System.out.println("아이디를 입력하세요==>");
//	String id = scan.next();
//	
//	String [] id1 = {"장나라", "김혜수", "한효주"};
//	
//	if(id.equals("장나라")) {
//		System.out.println(id + "님 환영합니다");
//	}else {
//		System.out.println("아이디가 존재하지 않습니다.");
//		}
		
		//선생님 답풀이
	Scanner scan = new Scanner(System.in);
	//배열이 저장된 값들
	String [] id = {"장나라", "전지현", "김다미", "김연아"};
	System.out.println("아이디를 입력해주세요==>");
	
	String userId = scan.next(); //입력받은 값
	
	// 문자열 변수 logInfo를 선언하고, 공란으로 초기화해줍니다.
	String logInfo = "";
	
	//로그인 값의 진위 여부를 판별하기 위한 체크변수 logTF를 정의해줍니다.
	int logTF = 0;
	
//	System.out.println(id.length); //3
	
	for (int i = 0; i < id.length; i++) { // i = 0, 1, 2, 3(4번 반복처리)
		if (userId.equals(id[i])) { //equals : 문자열 비교
			logInfo = id[i];
			logTF++; // 0 이 증가가 안되면 false , ++ > 1은 true 
		}
	}
	if (logTF > 0) { // 0 이 증가가 안되면 false
		System.out.println(logInfo + "님 환영합니다");
	}else {
		System.out.println("아이디가 존재하지않습니다.");
	}
	}
}







