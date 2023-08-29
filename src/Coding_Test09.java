import java.util.Scanner;

//Q7. for문을 사용하여, 1부터 Scanner 클래스 활용 입력값(예시 : 20)까지
//     양의 정수 중에서 다음의 실행 결과와 같이
//     3의 배수만 출력하는 자바 프로그램을 제작해 봅니다.
//     실행 결과 : 3 6 9 12 15 18

public class Coding_Test09 {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		System.out.println("3의 배수값을 알고 싶은 입력값을 입력해주세요 ==>");
		int inputInt = scan.nextInt();
		
		for(int i = 1; i <= inputInt; i++) {
			if (i%3 != 0) { //만약에(if문) 3의 배수값이 아닌 경우에는
				continue; //continue문을 활용해서 건너뛰기(제외하기) 처리 합니다!
			}
			System.out.println("실행 결과 = " + i + " ");
		}
	}
}









