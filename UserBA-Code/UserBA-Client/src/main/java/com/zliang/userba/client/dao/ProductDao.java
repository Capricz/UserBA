package com.zliang.userba.client.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.zliang.userba.client.dto.ProductDTO;
import com.zliang.userba.client.util.DBUtil;

public class ProductDao {
	private DBUtil dbUtil;
	
	public ProductDao(){
		dbUtil = new DBUtil();
	}
	
	public List<ProductDTO> listProduct(){
		List<ProductDTO> products = new ArrayList<ProductDTO>();
		Connection conn = dbUtil.getConnection();
		try {
			
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from product");
			while (rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setProductId(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setProductLine(rs.getString(3));
				dto.setPrice(rs.getBigDecimal(4));
				dto.setType(rs.getString(5));
				dto.setStatusFg(rs.getString(6));
				products.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			dbUtil.closeConnection(conn);
		}
		return products;
	}
}
