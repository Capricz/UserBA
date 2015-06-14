package com.zliang.userba.client.dto;

import java.math.BigDecimal;

public class ProductDTO {
	private Integer productId;
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductLine() {
		return productLine;
	}
	public void setProductLine(String productLine) {
		this.productLine = productLine;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getStatusFg() {
		return statusFg;
	}
	public void setStatusFg(String statusFg) {
		this.statusFg = statusFg;
	}
	private String productName;
	private String productLine;
	private BigDecimal price;
	private String type;
	private String statusFg;

}
