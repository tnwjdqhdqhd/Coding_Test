import java.util.Hashtable;
import java.util.Map;
import java.util.Scanner;

/* 키보드로 아이디와 패스워드를 입력받습니다. 
 * 입력조건으로 이름은 문자열이고 패스워드는 정수입니다. 
 * 입력된 내용을 비교해서 아이디가 "java"이고 
 * 패스워드가 12345라면 "로그인 성공"을 출력하고 그렇지 않으면 "로그인 실패"를 출력해보세요
 */
public class Q1_TeamCodingTest {
	public static void main(String[] args) {
		
//		Scanner scan = new Scanner(System.in);
//		System.out.println("아이디를 입력해 주세요==> ");
//		String id = scan.next();
//		System.out.println("비밀번호를 입력해 주세요==> ");
//		int password = scan.nextInt();
//		
//		if (id.equals("java")) {
//			if (password == 12345) {
//				System.out.println("로그인 성공");
//			} else {
//				System.out.println("비밀번호가 틀렸습니다. \n로그인 실패");
//			}
//		}else {
//			System.out.println("아이디가 틀렸습니다. \n로그인 실패");
//		}
		
		Map<String, Integer> map = new Hashtable<String, Integer>();
		
		map.put("java", 12345);
		
		Scanner scan = new Scanner(System.in);
		
		while (true) {
			System.out.println("아이디를 입력해 주세요==>");
			String id = scan.nextLine();
			System.out.println("비밀번호를 입력해 주세요==> ");
			int password = scan.nextInt();
			
			if (map.containsKey(id)) {
				if (map.get(id).equals(password)) {
					System.out.println("로그인 성공");
					break;
				}else {
					System.out.println("비밀번호가 틀렸습니다.");
				}
			}else {
				System.out.println("아이디가 틀렸습니다.");
			}
		}
		
		
	}
}
