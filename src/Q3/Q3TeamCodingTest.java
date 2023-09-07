package Q3;

import java.util.Scanner;

//배열의 크기를 활용하여, Scanner 클래스 활용 정수 5개를 입력하면
//합계값과 평균값이 화면에 출력되는 자바 프로그램을 제작하고,
//다음의 결과 내용과 같이 나타나도록 구현해 보시기 바랍니다.
//[결과 내용]
//숫자를 입력해 주세요 ==> 10
//숫자를 입력해 주세요 ==> 3
//숫자를 입력해 주세요 ==> 2
//숫자를 입력해 주세요 ==> 7
//숫자를 입력해 주세요 ==> 8
//입력된 5개 배열 요소값들의 합계값 = 30
//입력된 5개 배열 요소값들의 평균값 = 6.0
public class Q3TeamCodingTest {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int arr[] = new int[5];
		int sum = 1;
		
		for (int i = 0; i < arr.length; i++) {
			System.out.println("숫자를 입력해주세요");
			arr[i] = scan.nextInt();
//			System.out.println(num);
		}
		for (int i = 0; i < arr.length; i++) {
			sum += arr[i]; // sum = sum + arr[i] 
		}
		System.out.println("입력된 5개 배열 요소값들의 합계값 =" + sum);
		System.out.printf("입력된 5개 배열 요소값들의 평균값 = %.1f",sum/(float)arr.length);
	}
}
