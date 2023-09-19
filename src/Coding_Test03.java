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
<<<<<<< HEAD

		Scanner scan = new Scanner(System.in);
		String[] id = {"장나라", "전지현", "김다미"};
		System.out.println("아이디를 입력해 주세요==> ");
		
		String userId = scan.next();
		
		// 문자열 변수 logInfo를 선언하고, 공란으로 초기화해 줍니다.
		String logInfo = "";
		
		// 로그인 값의 진위 여부를 판결하기 위한 체크 변수 logTF를 정의해 줍니다.
		int logTF = 0;
		
		// System.out.println(id.length);
		
		for (int i = 0; i < id.length; i++) { // i = 0, 1, 2 (3번 반복 처리)
			if (userId.equals(id[i])) {
				logInfo = id[i];
				logTF++;
			}
			
		}
		
		if (logTF > 0) {
			System.out.println(logInfo + "님 환영합니다.");
		}else {
			System.out.println("아이디가 존재하지 않습니다.");
		}
		



=======
		String[] id = {"장나라","전지현","김다미"};
		Scanner scanner = new Scanner(System.in);
		System.out.print("아이디를 입력해 주세요 ==> ");
		String id_input = scanner.next();
		int check = 0;
		for(int i=0;i<id.length;i++) {
			if(id_input.equals(id[i])) {
				check = 1;
			}
		}
		if(check==1) {
			System.out.println(id_input+"님 환영합니다.");
		}
		else {
			System.out.println("아이디가 존재하지 않습니다.");
		}
>>>>>>> fc24a11... first eclipse commit
	}
}







