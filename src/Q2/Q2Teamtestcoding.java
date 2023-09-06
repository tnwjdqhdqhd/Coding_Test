package Q2;

import java.util.Scanner;

public class Q2Teamtestcoding {
//  while문을 사용하여, 1부터 Scanner 클래스 활용 입력값(예시 : 30)까지
//  양의 정수 중에서 다음의 실행 결과와 같이
//  6의 배수값들을 출력하고, 6의 배수값들의 합을 다음의 실행 결과와 같이 구하는
//  자바 프로그램을 제작해 봅니다.


	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.println("양의 정수 값을 입력해주세요==>");
		int Intputnum = scan.nextInt();
		
		int a = 1, sum = 0;
		
		while (a <= Intputnum) {
			a++;
			if (a%6 != 0) {
				continue;
			}
			sum += a; 
			System.out.println(a);
		}
		System.out.println("6의 배수값 = " + sum);
	}
}
