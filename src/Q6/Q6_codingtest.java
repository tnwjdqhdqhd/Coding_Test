package Q6;

import java.util.Scanner;

//쇼핑몰에서 주문이 들어왔습니다. 
//주문 내용을 구현할 수 있는 클래스를 만들어
//해당 내용을 입력받아 아래와 같은 형식으로 출력해보세요. 
//ex --> 출력결과
//주문자 아이디: nara
//주문날짜: 2023년 09월 07일
//주문자 이름: 장나라
//상품 번호: PD-223-12
//배송 주소: 서울시 구로구
public class Q6_codingtest {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.println("주문자 아이디를 입력해주세요");
		String id = scan.nextLine();
		System.out.println("주문날짜를 입력해주세요");
		String date = scan.nextLine();
		System.out.println("주문자 이름을 입력해주세요");
		String name = scan.nextLine();
		System.out.println("상품번호 입력해주세요");
		String num = scan.nextLine();
		System.out.println("배송주소를 입력해주세요");
		String addr = scan.nextLine();
		
		//객체생성
		Shoppingmall myShop = new Shoppingmall(id, date, name, num, addr);
		
		
		
		
		
	
		
	}

}
