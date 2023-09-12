
// for문을 이용해서 *을 출력하는 코드를 작성해 보세요
public class Q7_TeamCodingTest {
	public static void main(String[] args) {
		
		for (int i = 1; i <= 4; i++) {
			for (int j = 1; j <= i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		for (int i = 1; i <= 4; i++) { // 몇 줄을 출력할 것인지
			for (int j = 4; j > i; j--) { // 한 줄에 몇개를 출력할 것인지
				System.out.print("*");
			}
			System.out.println();
		}
		
		for (int i = 1; i <= 5; i++) {
			for (int j = 5; j > i; j--) {
				System.out.print(" ");
			}
			for (int m = 1; m < i; m++) {
				System.out.print("*");
			}
			System.out.println();
			
		}
		
	}
}
