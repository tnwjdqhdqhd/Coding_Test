import java.util.Scanner;

//Q7. for문을 사용하여, 1부터 Scanner 클래스 활용 입력값(예시 : 20)까지
//     양의 정수 중에서 다음의 실행 결과와 같이
//     3의 배수만 출력하는 자바 프로그램을 제작해 봅니다.
//     실행 결과 : 3 6 9 12 15 18

public class Coding_test9 {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		System.out.print("숫자를 입력하세요 ==> ");
		int num = scan.nextInt();
		
		for (int i = 3; i <= 20; i++) {
			if (i%3 !=0) { // 만약에 3의 배수값이 아닌 경우에는 continue문을 활용하여 (건너띄기)제외하기 처리 함.
				continue;
			}
			System.out.println(i);
		}
	}
}

