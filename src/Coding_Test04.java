import java.util.Scanner;

// Q4. 두 정수를 입력 받아서, 두 수중에서 큰 값을 구하는
//       자바 프로그램을 제작하시기 바랍니다.
//       결과 화면은 다음과 같이 구현하시기 바랍니다.
// 결과 화면
// 첫 번째 수를 입력해 주세요 ==> 
// 10
// 두 번째 수를 입력해 주세요 ==> 
// 20
// 두 번째 입력값 20이 더 큽니다.

public class Coding_Test04 {
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("첫번째 수를 입력해 주세요 ==> ");
		int num1 = scanner.nextInt();
		System.out.print("두 번째 수를 입력해 주세요 ==> ");
		int num2 = scanner.nextInt();
		if(num1>num2) {
			System.out.println("첫번째 입력값 "+num1+"이 더 큽니다");
		}
		else if (num1<num2) {
			System.out.println("두번째 입력값 "+num2+"이 더 큽니다");
		}
		else {
			System.out.println("두 수는 같습니다.");
		}
	}
}


