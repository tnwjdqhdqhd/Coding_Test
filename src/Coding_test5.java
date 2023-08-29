import java.util.Scanner;

// 5층 건물의 엘리베이터안이라고 가정했을때, 1층 식당, 2층 치과,
// 3층 학원, 4층 회사, 5층 스터디 카페를 가기 위해, 건물의 층 번호를
// 정수값으로 입력 받아서 누르면, 그 층이 어떤 곳인지 알려주는
// 자바 프로그램을 제작하시기 바랍니다. 이때, switch-case문을 활용하고, 
// 5를 입력했을 경우, "5층 스터디 카페 입니다!" 라고 화면으로 출력이
// 되게 하시기 바랍니다.
// 다음은 button(층별 버튼)과 comment(층별 선택 안내 메시지) 변수의
// 입력 조건 예시 입니다.
// int button = 5;
// String comment;

public class Coding_test5 {
	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);
		System.out.print("원하시는 층수 값을 입력해주세요! ==> ");
		int num = scan.nextInt();
		String comment;
		switch (num) {
		case 1:
			comment = "1층은 식당";
			break;
		case 2:
			comment = "2층은 치과";
			break;
		case 3:
			comment = "3층은 학원";
			break;
		case 4:
			comment = "4층은 회사";
			break;
		case 5:
			comment = "5층은 스터디카페";
			break;
		default:
			comment = "존재하지 않는 층";
			break;
		}
		System.out.println(comment + "입니다.");
	}
}

