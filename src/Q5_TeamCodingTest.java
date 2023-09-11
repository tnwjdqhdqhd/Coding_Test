
import java.util.Scanner;

//향상된 for문과 배열을 사용하여, 키보드 값으로 5개의 점수를 입력받고
//점수에 대한 합계값과 평균값이 나오도록 출력시켜보세요!
public class Q5_TeamCodingTest {

	public static void main(String[] args) {
		
		int arr[] = new int[5];
		Scanner scan = new Scanner(System.in);
		int sum = 0;
		
		for (int i : arr) {
			if (i == 6) {
				break;
			}
			System.out.println("정수를 입력해 주세요==> ");
			arr[i] = scan.nextInt();
			sum += arr[i];
		}
		System.out.println("합계값 = " + sum);
		double avg = (double) sum/5;
		System.out.println("평균값 = " + avg);
		scan.close();
		
	}
	
}
