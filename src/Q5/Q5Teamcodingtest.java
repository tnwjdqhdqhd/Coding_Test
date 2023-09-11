package Q5;

import java.util.Scanner;

// 향상된 for문과 배열을 사용하여, 키보드 값으로 5개의 점수를 입력받고
// 점수에 대한 합계값과 평균값이 나오도록 출력시켜보세요!
public class Q5Teamcodingtest {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		int sum = 0;
		int scores [] = new int[5];
		
		for (int i : scores) {
			System.out.println("점수를 입력하세요==>");
			scores[i] = scan.nextInt();
			sum = sum + scores[i];
		}
		System.out.println("점수 총합 = " + sum);
		
		double avg = (double) sum / scores.length;
		System.out.println("점수 평균 = " + avg);
	}
}
