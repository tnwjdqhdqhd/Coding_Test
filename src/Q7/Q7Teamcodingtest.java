package Q7;
// for문을 이용해서 *를 출력하는 코드를 작성해보세요
public class Q7Teamcodingtest {

	public static void main(String[] args) {
		
		
		for (int i = 1; i <= 4; i++) {
			
			for (int j = 1; j <= i; j++) {
				System.out.print("*");
			}
//			enter 줄바꿈 
			System.out.println("");
		}
		
		for (int i = 1; i <= 4; i++) {
			
			for (int j = 4; j >= i; j--) {
				System.out.print("*");
			}
			System.out.println("");
		}
		
		System.out.println("");
		
		for (int i = 1; i <= 4; i++) {
			for (int j = 3; j >= i; j--) {
				System.out.print(" ");
			}
			for (int j = 1; j <= i; j++) {
				System.out.print("*");
			}
//			enter 줄바꿈 
			System.out.println("");
		}
	}
}
