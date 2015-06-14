package com.zliang.userba.client.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

import com.zliang.userba.client.dao.ProductDao;
import com.zliang.userba.client.dto.ProductDTO;

public class ListProductServlet extends HttpServlet {
	
	private ProductDao dao;

	@Override
	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
		dao = new ProductDao();
		List<ProductDTO> dtoList = dao.listProduct();
		req.setAttribute("dtoList", dtoList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/listProducts.jsp");
		dispatcher.forward(req, resp);
	}

}
