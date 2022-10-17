package lecturep.p01lombok;

public class App {
	public static void main(String[] args) {
		System.out.println("메인메소드1");
		
		
		JavaBean1 j1 = new JavaBean1();
		j1.setName("jiji");
		j1.setAddress("seoul");
		j1.setAge(30);
		
		String name1 = j1.getName();
		
		JavaBean2 j2 = new JavaBean2();
		
		j2.setCompany("tesla");
		j2.setLocation("usa");
		j2.setScore(30);
		
		String company = j2.getCompany();
		int score = j2.getScore();
		String location = j2.getLocation();
		
		JavaBean4 j4 = new JavaBean4();
		j4.setAddress("korea");
		j4.setScore(50);
		
		System.out.println(j4.toString());
	}
}
