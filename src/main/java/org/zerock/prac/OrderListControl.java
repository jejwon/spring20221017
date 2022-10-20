package org.zerock.prac;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.lecture.Order;

@Controller
@RequestMapping("v1020")
public class OrderListControl {
	@Autowired
	private DataSource dataSource;
	
	//method forward
	@GetMapping("OrderListPage")
	public void listAllOrders(
			@ModelAttribute("orderList") ArrayList<Order> list) throws Exception{
		//sql query
		
		String sql = "SELECT OrderID, "
					+ "CustomerID, "
					+ "EmployeeID, "
					+ "OrderDate, "
					+ "ShipperID "
					+ "FROM Orders "
					+ "ORDER BY EmployeeID"; 
		
		//connection
		try(Connection con = dataSource.getConnection(); //dataSource얻기
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);){
			
			while(rs.next()) {
				Order o = new Order();
				o.setOrderId(rs.getInt("orderId"));
				o.setCustomerId(rs.getInt("customerId"));
				o.setEmployeeId(rs.getInt("employeeId"));
				o.setOrderDate(rs.getString("orderDate"));
				o.setShipperId(rs.getInt("shipperId")); //list 만들고 담기
			
				list.add(o);
			}
		}
		
	}
}
