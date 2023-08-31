import java.util.Scanner;

//Q14. while문을 활용하여,범위 숫자들의 합계값을 구하고 싶은 양의 정수값을
//    Scanner 클래스를 활용하여 입력 받아서,
//    입력된 양의 정수값까지 합계값을 구하여
//    화면으로 표시해 주는 자바 프로그램을 제작해 보시기 바랍니다.

//[실행 결과 예시(1) : Scanner 클래스 활용 5를 입력 받아서,
// 양의 정수값 변수명 inputInt에 5 대입 예시, 
// 문자열 표현 : "1부터 " + inputInt + "까지의 합 = ", 합계 결과값 변수명 hap,
// 1부터 5까지의 합 = 15]

//[실행 결과 예시(2) : Scanner 클래스 활용 10을 입력 받아서,
// 양의 정수값 변수명 inputInt에 10 대입 예시, 
// 문자열 표현 : "1부터 " + inputInt + "까지의 합 = ", 합계 결과값 변수명 hap,
// 1부터 10까지의 합 = 55]

public class Coding_Test14{
	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);
		System.out.println("합계값을 알고 싶은 정수를 입력해 주세요==>");
		int inputInt = scan.nextInt();
		
		int hap = 0, i = 1;
		
		while (i <= inputInt) {
			hap+=i; // hap = hap + i;
			i++;
		}
		System.out.println("1부터 " + inputInt + "까지의 합 = " + hap);

	}
}





