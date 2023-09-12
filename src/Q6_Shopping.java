import java.util.Scanner;

public class Q6_Shopping {

	String id;
	String date;
	String name;
	String number;
	String address;
	
	public Q6_Shopping() {
		System.out.println("주문자의 정보를 입력해 주세요");
		Scanner scan = new Scanner(System.in);
		System.out.print("주문자 아이디 : ");
		String id = scan.nextLine();
		System.out.print("주문날짜 : ");
		String date = scan.nextLine();
		System.out.print("주문자 이름 : ");
		String name = scan.nextLine();
		System.out.print("상품 번호 : ");
		String number = scan.nextLine();
		System.out.print("배송 주소 : ");
		String address = scan.nextLine();
		
		System.out.println("======================");
		
//		get(id, date, name, number, address);
		
	}
	
	public void get(String id, String date, String name, String number, String address) {
		System.out.println("주문자 아이디 : " + id); 
		System.out.println("주문날짜 : " + date);
		System.out.println("주문자 이름 : " + name);
		System.out.println("상품 번호 : " + number);
		System.out.println("배송 주소 : " + address);
	}

}
