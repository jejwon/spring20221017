package org.zerock.controller.lecture.p06jdbc;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ex25")
public class Controller25 {
	
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping("sub01")
	public void method1() throws Exception {
		String sql = "INSERT INTO myTable07 (col1, col2, col3, col4, col5, col6) VALUES (?, ?, ?, ?, ?, ?) ";
		
		try(Connection con = dataSource.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setInt(1, 999);
			pstmt.setDouble(2, 283.333);
			pstmt.setString(3, "hello");
			pstmt.setString(4, "sql");
			pstmt.setDate(5, java.sql.Date.valueOf("2022-08-01"));
			pstmt.setTimestamp(6, java.sql.Timestamp.valueOf("2011-11-11 08:35:12"));
			
			int cnt = pstmt.executeUpdate();
			System.out.println(cnt + "개 레코드 입력 성공");
		}
		
	}
	
	@RequestMapping("sub02")
	public void method02() throws Exception {
		String sql = "INSERT INTO myTable08 (name, age, score, address, birthDate, inserted) VALUES (?, ?, ?, ?, ?, ?)";
		
		try(Connection con = dataSource.getConnection(); 
				PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setString(1, "yichi");
			pstmt.setInt(2, 18);
			pstmt.setDouble(3, 89.9);
			pstmt.setString(4, "seoul");
			pstmt.setDate(5, Date.valueOf("2010-10-01"));
			pstmt.setTimestamp(6, Timestamp.valueOf("2017-12-30 18:32:24"));
			
			int cnt = pstmt.executeUpdate();
			System.out.println(cnt + "개 레코드 입력 성공~");
			
		}
	}
	
	@RequestMapping("sub03")
	public void method3() throws Exception{
		String sql = "SELECT col1, col2, col3, col4, col5, col6 FROM myTable07";
		
		try(Connection con = dataSource.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);){
			
			while(rs.next()) {
				int col1 = rs.getInt("col1");
				double col2 = rs.getDouble("col2");
				String col3 = rs.getString("col3");
				String col4 = rs.getString("col4");
				Date col5 = rs.getDate("col5");
				Timestamp col6 = rs.getTimestamp("col6");
				
				System.out.println(col1);
				System.out.println(col2);
				System.out.println(col3);
				System.out.println(col4);
				System.out.println(col5);
				System.out.println(col6);
				System.out.println();
			}
		}
	}
	
	@RequestMapping("sub04")
	public void method4() throws SQLException {
		String sql = "SELECT name, age, score, address, birthDate, inserted FROM myTable08";
		
		try(Connection con = dataSource.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);){
			
			while(rs.next()) {
				String name = rs.getString("name");
				int age = rs.getInt("age");
				double score = rs.getDouble("score");
				String address = rs.getString("address");
				Date birthDate = rs.getDate("birthDate");
				Timestamp inserted = rs.getTimestamp("inserted");
				
				System.out.println(name);
				System.out.println(age);
				System.out.println(score);
				System.out.println(address);
				System.out.println(birthDate);
				System.out.println(inserted);
			}
		}
		
	
	}
}
