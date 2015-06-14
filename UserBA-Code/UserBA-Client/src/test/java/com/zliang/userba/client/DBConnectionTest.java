package com.zliang.userba.client;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;


public class DBConnectionTest {
	
	@Test
	public void testConn(){
		try {
			Class.forName("oracle.jdbc.OracleDriver");
//			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		String url = "jdbc:oracle:thin:@AdermonServer:1522/UDBD";
		String user = "UBAD";
		String password = "UBAD";
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			Statement stmt = conn.createStatement();
			String sql = " select * from product";
			ResultSet rs = stmt.executeQuery(sql);
			
			assertEquals(10, rs.getFetchSize());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
