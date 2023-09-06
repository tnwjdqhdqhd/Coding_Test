import java.util.Scanner;

// while문을 사용하여, 1부터 Scanner 클래스 활용 입력값(예시 : 30)까지
// 양의 정수 중에서 다음의 실행 결과와 같이
// 6의 배수값들을 출력하고, 6의 배수값들의 합을 다음의 실행 결과와 같이 구하는
// 자바 프로그램을 제작해 봅니다.
public class Q2_TeamCodingTest {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		System.out.println("숫자를 입력해 주세요==>");
		int num = scan.nextInt();
		
		int i = 1, sum = 0;
		while (i <= num) {
			i++; 
			if (i%6!=0) {
				continue;
			}
			sum += i;
			System.out.println("6의 배수값 = " + i);
		}
		System.out.println("6의 배수값들의 합 = " + sum);
	}
}
