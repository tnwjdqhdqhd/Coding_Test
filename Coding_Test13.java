import java.util.Scanner;

/*
Q13.  if-else문을 활용하여 "나이"값을
        Scanner 클래스 활용 키보드로 입력 받아서,
        연령대(60대 이상, 50대, 40대, 30대, 20대 이하)를
        알려주는 자바 프로그램을 제작하시기 바랍니다.
*/

class Coding_Test13 {

	public static void main(String[] args) {
		
		// 내가 한 코딩
//		Scanner scan = new Scanner(System.in);
//		System.out.println("나이를 입력해 주세요==>");
//		int age = scan.nextInt();
//		
//		if (age <= 19) {
//			System.out.println("10대 이하입니다.");
//		}else if (age <= 29) {
//			System.out.println("20대입니다.");
//		}else if (age <= 39) {
//			System.out.println("30대입니다.");
//		} else if (age <= 49) {
//			System.out.println("40대입니다.");
//		} else if (age <= 59) {
//			System.out.println("50대입니다.");
//		} else {
//			System.out.println("60대 이상입니다.");
//		}
		
		// 선생님이 한 코딩
		Scanner scan = new Scanner(System.in);
		System.out.println("귀하의 나이를 입력해 주시기 바랍니다==>");
		int age = scan.nextInt();
		
		String range;
		
		if (age >= 60) {
			range = "60대 이상";
		}else if (age >= 50) {
			range = "50대";
		}else if (age >= 40) {
			range = "40대";
		}else if (age >= 30) {
			range = "30대";
		}else {
			range = "20대 이상";
		}
		System.out.println("귀하의 연령대는 " + range + "입니다.");
		


	}
}

