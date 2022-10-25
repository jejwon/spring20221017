package org.zerock.controller.lecture.p06jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ex26")
public class Controller26 {
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping("sub01")
	public void method1() throws Exception {
		String sql = "INSERT INTO Customers (CustomerName) VALUES (?) ";
		try(Connection con = dataSource.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS); // = 1
				){
			pstmt.setString(1, "SON HM");
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if(rs.next()) {
				int newKey = rs.getInt(1);
				System.out.println(newKey + "번 고객 입력됨");
			}
		}
		
	}
	// sub02 : 요청 경로
	// method2()
	// 새 직원을 입력하고 생성된 키를 sysout으로 출력하는 코드 작성
	
	@RequestMapping("sub02")
	public void method2() throws Exception {
		String sql = "INSERT INTO Employees (LastName, FirstName) VALUES (?,?)";
		try(Connection con = dataSource.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql, 1);
				){
			pstmt.setString(1, "david");
			pstmt.setString(2, "damiano");
			
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if(rs.next()) {
				int newKey = rs.getInt(1);
				System.out.println(newKey + "번 직원 입력됨");
			}
		
		}
	}
}
