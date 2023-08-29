import java.util.Scanner;

//Q1.
//덧셈 연산을 수행하는 함수를 생성하고,
//두 정수를 입력 받아서, 합의 결과값을 구현하는
//자바 프로그램을 제작하시기 바랍니다.
public class Coding_test01 {
	public static void main(String[] args) {
		// 실제 키보드로부터 입력받는 값
		Scanner scan = new Scanner(System.in);
		System.out.println("더하고 싶은 첫번째 정수를 입력하세요==>");
		// scan값 중에서 정수값을 뽑아냄
		int num1 = scan.nextInt();
		System.out.println("더하고 싶은 두번째 정수를 입력하세요==>");
		int num2 = scan.nextInt();
		
		// 이 함수를 호출해서 아래 private static int로 간다. 
		// 디버그 아래 int에서 f5를 누르면 private static int로 넘어가서 값이 어떻게 변하는지 보여준다. 
		int result = sum(num1,num2);
		System.out.println("두 정수 합의 결과값 = " + result);
	}

	// 호출받은 매개변수에 입력한 값이 들어간다. 
	// 함수 생성
	private static int sum(int num1, int num2) {
		int sum = 0;
		sum = num1 + num2;
		// return문이 sum 함수 호출한 곳으로 다시 보내준다. 
		return sum;
	}
}
// 디버그로 값이 어떻게 변하는지 확인해보기
