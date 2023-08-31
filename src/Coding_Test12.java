import java.util.Scanner;

/*
Q12. 배열의 크기를 활용하여, Scanner 클래스 활용 정수 5개를 입력하면
       합계값과 평균값이 화면에 출력되는 자바 프로그램을 제작하고,
       다음의 결과 내용과 같이 나타나도록 구현해 보시기 바랍니다.
      [결과 내용]
숫자를 입력해 주세요 ==> 10
숫자를 입력해 주세요 ==> 3
숫자를 입력해 주세요 ==> 2
숫자를 입력해 주세요 ==> 7
숫자를 입력해 주세요 ==> 8
입력된 5개 배열 요소값들의 합계값 = 30
입력된 5개 배열 요소값들의 평균값 = 6.0
*/

public class Coding_Test12 {

	public static void main(String[] args) {

//		Scanner scan = new Scanner(System.in);
//		System.out.println("숫자를 입력해 주세요==>");
//		int inputInt1 = scan.nextInt();
//		System.out.println("숫자를 입력해 주세요==>");
//		int inputInt2 = scan.nextInt();
//		System.out.println("숫자를 입력해 주세요==>");
//		int inputInt3 = scan.nextInt();
//		System.out.println("숫자를 입력해 주세요==>");
//		int inputInt4 = scan.nextInt();
//		System.out.println("숫자를 입력해 주세요==>");
//		int inputInt5 = scan.nextInt();
//		
//		int sum = inputInt1 + inputInt2 + inputInt3 + inputInt4 + inputInt5;
//		System.out.println("입력된 5개 배열 요소값들의 합계값 = " + sum);
//		
//		double avg = (double) (inputInt1 + inputInt2 + inputInt3 + inputInt4 + inputInt5) / 5;
//		System.out.println("입력된 5개 배열 요소값들의 평균값 = " + avg);
		
		Scanner scanner = new Scanner(System.in);
		int score [] = new int[5];
		
		int sum = 0;
		int i;
		
		for (i = 0; i < score.length; i++) { // i = 0, 1, 2, 3, 4
			System.out.println("정수 숫자를 입력해 주세요==>");
			score[i] = scanner.nextInt();
			// System.out.println(score[i]);
			// System.out.println("score[" + i + "]" + score[i]);
		}
		
		for (i = 0; i < score.length; i++) {
			sum += score[i]; // sum = sum + score[i]
		}
		System.out.println("입력된 5개 배열 요소값들의 함계값 = " + sum);
		System.out.printf("입력된 5개 배열 요소값들의 평균값 = %.1f", sum/(float)score.length);
		
		scanner.close();
		
		
		
	}
}






