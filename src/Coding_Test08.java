
//다음의 [실행 결과값]과 같이 출력되도록
//if문과 break, continue, for문을 이용해서
//자바 프로그램을 제작하시기 바랍니다.
//
//[실행 결과값]
//0, 2, 4, 6, 8, 10

public class Coding_Test08 {

	public static void main(String[] args) {
	
	for (int i = 0; ; i++) {
		if(i%2 == 1) { //만약에(if문), 홀수일 경우(i%2 == 1)
			continue; //건너뛰고(제외하고) 다시 for문으로 이어서 처리하게함.
		}
		if (i > 10) { //만약에 (if문), i 값이 10을 넘어간다면
			break; // break 문으로 처리를 중지합니다.
		}
		System.out.println(i + " ");
		}
	}
}
