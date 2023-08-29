import java.util.Scanner;

//
//Q1.
//덧셈 연산을 수행하는 함수를 생성하고,
//두 정수를 입력 받아서, 합의 결과값을 구현하는
//자바 프로그램을 제작하시기 바랍니다.
public class Coding_Test01 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("첫번째 정수를 입력하세요 ==> ");
		int num1 = scanner.nextInt();
		System.out.print("두번째 정수를 입력하세요 ==> ");
		int num2 = scanner.nextInt();
		int sum = sum(num1,num2);
		System.out.println("입력한 2개의 숫자의 합은 "+sum+"입니다.");
		
	}

	private static int sum(int num1, int num2) {
		// TODO Auto-generated method stub
		int sum = num1 + num2;
		return sum;
	}
}
