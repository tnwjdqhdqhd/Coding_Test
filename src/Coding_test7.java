import java.util.Scanner;

//임의의 정수를 입력 받아서
//양수, 음수, 0을 구분해서 보여주는
//자바 프로그램을 제작하고 다음 결과 화면을 구현하시기 바랍니다.
//[실행 결과 화면]
//임의의 정수를 입력해 주세요 ==> -10
//-10은 음수입니다.

public class Coding_test7 {

	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);
		System.out.print("임의의 정수를 입력해 주세요 ==> ");
		
		int num  = scan.nextInt();
		
		if(num > 0) {
		System.out.println(num + "은 양수입니다!");
		}
	}  else if (num <0) {
		System.out.println(num + "은 음수 입니다.");
	}  else {
		System.out.println(num + "은  0입니다.");
	}
}
}
