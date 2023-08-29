import java.util.Scanner;

/*
Q6.
FuctionCollection 클래스(함수 클래스)를 만들고,
곱셈 연산을 수행하는 multiply 함수를 생성해 줍니다.
Coding_Test06 클래스(실행 클래스)를 생성하고,
FuctionCollection 클래스에 있는 multiply 함수를 활용하여
두 정수를 입력 받아서, 곱셈의 결과값을 구현하는
자바 프로그램을 제작하시기 바랍니다
*/

public class Coding_test6 {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		System.out.println("첫 번째 정수를 입력해 주시기 바랍니다 ==> ");
		int num1 = scan.nextInt();
		
		System.out.println("두 번째 정수를 입력해 주시기 바랍니다 ==> ");
		int num2 = scan.nextInt();

		FuctionCollection fc = new FuctionCollection();
		int result = fc.multipy(10, 5);
		System.out.println("result = + result");
		
	}
}

