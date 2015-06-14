<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.zliang.userba.client.dto.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<table>
<thead>
<tr>
	<td>Product Id</td>
	<td>Product Name</td>
	<td>Product Line</td>
	<td>Product Type</td>
	<td>Price</td>
</tr>
</thead>
<tbody>
<%
	List<ProductDTO> dtoList = (List<ProductDTO>)request.getAttribute("dtoList");
	if(dtoList!= null && !dtoList.isEmpty()){
		for (ProductDTO p : dtoList){
			%>
			<tr>
				<td><%=p.getProductId() %></td>
				<td><%=p.getProductName() %></td>
				<td><%=p.getProductLine() %></td>
				<td><%=p.getType() %></td>
				<td><%=p.getPrice() %></td>
			</tr>
			<% 
		}
	}
%>

</tbody>
</table>
</center>
</body>
</html>