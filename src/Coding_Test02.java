import java.util.Scanner;

//Q2. 범위 숫자들의 합계값을 구하고 싶은 양의 정수값을 Scanner 클래스를 활용하여 입력 받아서,
//     for문을 활용하여, 입력된 양의 정수값까지  합계값을 구하여
//     화면으로 표시해 주는 자바 프로그램을 제작해 보시기 바랍니다.
//     [실행 결과 예시(1) : Scanner 클래스 활용 5를 입력 받아서, 양의 정수값 변수명 inputInt에 5 대입 예시, 
//     문자열 표현 : "1부터 " + inputInt + "까지의 합 = ", 합계 결과값 변수명 hap,
//     1부터 5까지의 합 = 15]
//     [실행 결과 예시(2) : Scanner 클래스 활용 10을 입력 받아서, 양의 정수값 변수명 inputInt에 10 대입 예시, 
//     문자열 표현 : "1부터 " + inputInt + "까지의 합 = ", 합계 결과값 변수명 hap,
//     1부터 10까지의 합 = 55]

// [중요] Java 파일 클릭 선택 - 마우스 우클릭 - Debug As - Java Application
//        : Breakpoints에서 Hit count: 3 (예를 들어, for문 브레이크 포인트 체크 시 반복문에서 3까지 처리되어 있고,
//        4부터 디버그 체크가 진행되게 함)

public class Coding_Test02 {

	public static void main(String[] args) {
<<<<<<< HEAD
		Scanner scan = new Scanner(System.in);
		System.out.println("범위 숫자들의 합계값을 구하고 싶은 양의 정수값을 입력해 주세요==> ");
		int inputInt = scan.nextInt();
		int hap = 0;
		
		for (int i = 0; i <= inputInt; i++) {
			hap += i; // hap = hap + i;
			// System.out.println(hap);
		}
		System.out.println("1부터 " + inputInt + "까지의 합 = " + hap);
		
=======
		Scanner scanner = new Scanner(System.in);
		System.out.print("정수를 입력하세요 ==> ");
		int inputInt = scanner.nextInt();
		int hap=0;
		for(int i=1;i<=inputInt;i++) {
			hap += i;
		}
		System.out.println("1부터 " + inputInt + "까지의 합 = "+hap);
>>>>>>> fc24a11... first eclipse commit
	}
}
