import java.util.Scanner;

/*
Q10. while문을 사용하여, Scanner 클래스 활용
보고 싶은 구구단의 단을 입력(예시 : 7)하면,
다음의 결과 화면과 같이 해당하는 구구단이 출력되는
자바 프로그램을 제작해 보시기 바랍니다.

[결과 화면]

보고 싶은 구구단의 단을 입력해 주시기 바랍니다 ==> 7
7 X 1 = 7
7 X 2 = 14
7 X 3 = 21
7 X 4 = 28
7 X 5 = 35
7 X 6 = 42
7 X 7 = 49
7 X 8 = 56
7 X 9 = 63
*/

public class Coding_Test10{
	public static void main(String[] args) {

<<<<<<< HEAD
//		Scanner scan = new Scanner(System.in);
//		System.out.println("보고 싶은 구구단의 단을 입력하세요==>");
//		int num = scan.nextInt();
//		int sum = 0;
//		
//		while (sum < 9 ) {
//			sum++;
//			System.out.println(num + " x " + sum + " = " + (num*sum));
//		}
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("보고 싶은 구구단의 단을 입력하세요==> ");
		int dan = scanner.nextInt();
		
		int times = 1, result = 1;
		
		while (times <= 9) {
			result = dan * times;
			System.out.println(dan + " * " + times + " = " + result);
			times++;
		}
		scanner.close();
=======
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("정수를 입력하세요 ==> ");
		int num = scanner.nextInt();
		int i=1;
		System.out.println(num+"단입니다.");
		while(i<10) {
			System.out.println(num+" x "+i+" = "+num*i);
			i++;
		}

>>>>>>> fc24a11... first eclipse commit

	}
}

