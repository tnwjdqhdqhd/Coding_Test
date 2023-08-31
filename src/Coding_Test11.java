import java.util.Scanner;

//Q11. while문을 사용하여, 1부터 Scanner 클래스 활용 입력값(예시 : 20)까지
//     양의 정수 중에서 다음의 실행 결과와 같이
//     3의 배수값들을 출력하고, 3의 배수값들의 합을 다음의 실행 결과와 같이 구하는
//     자바 프로그램을 제작해 봅니다.

// [Scanner 클래스 활용 입력값이 10일 경우]
// 3의 배수값을 알고 싶은 입력값을 입력해 주세요 ==> 10
// 3의 배수값 = 3
// 3의 배수값 = 6
// 3의 배수값 = 9
// 1부터 10까지 숫자 중에서 3의 배수값들의 합 = 18

// [Scanner 클래스 활용 입력값이 20일 경우]
// 3의 배수값을 알고 싶은 입력값을 입력해 주세요 ==> 20
// 3의 배수값 = 3
// 3의 배수값 = 6
// 3의 배수값 = 9
// 3의 배수값 = 12
// 3의 배수값 = 15
// 3의 배수값 = 18
// 1부터 20까지 숫자 중에서 3의 배수값들의 합 = 63

public class Coding_Test11{
	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);
		System.out.println("3의 배수값을 알고 싶은 입력값을 입력해 주세요==>");
		int inputInt = scan.nextInt();
		
		// 초기값 세팅
		int a = 1, sum = 0;
		
		while (a <= inputInt) {
			if (a%3 == 0) { // 만약의 (if문) 3의 배수일 경우에는 (a%3 == 0)
				System.out.println("3의 배수값 = " + a);
				sum += a; // sum = sum + a;
			}
			a++;
		}
		System.out.println("1부터 " + inputInt + "까지 숫자 중에서 3의 배수값들의 합 = " + sum);
		
		


	}
}





