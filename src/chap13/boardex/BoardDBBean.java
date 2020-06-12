package chap13.boardex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class BoardDBBean {
	private static BoardDBBean instance = new BoardDBBean();
	
//	private BoardDBBean(){} 로 기본생성자 호출못하게 막음
//	instance로만 생성 할 수 있게
	public static BoardDBBean getInstance() {
		return instance;
	}
	
	public String doA() {
		return "연결";
	}
	public void insertArticle(BoardDataBean databean) {
		System.out.println(databean);
		Connection conn = null; // DB연결하는 객체
		PreparedStatement pstmt = null; // sql연결하는데 insert select
		// jar 파일 관리회사 maven or grdle
		
		// jar 파일 연결 되어져있는지 확인: Class.forName();
		// Connection 객체 연결: Drivermanager.getConnection();
		// preparedStatement 생성: conn.prepareStatement();
		// 실행
		try {
			// mysql 3306
			// oracle 1521
			// sqlserver 1433
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://192.168.0.200:1433;database=sh_20200611", "sa","8765432!");
			System.out.println("데이터베이스 연결성공 !");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertDetailArticle(String name, String subject, String email,
			String content, String password) {
		System.out.println("subject = "+subject);
		System.out.println("name = "+name);
		System.out.println("email = "+email);
		System.out.println("content = "+content);
		System.out.println("password = "+password);
	}
}
