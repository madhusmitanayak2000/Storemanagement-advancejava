<%@page import="store_management_system.dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="store_management_system.connection.DbCon"%>
<%@page import="store_management_system.model.*"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}

  ProductDao pd=new ProductDao(DbCon.getConnection());
  List<Product> products= pd.getAllProducts();
  
  
%>
<!DOCTYPE html>
<html>
<head>



<%@include file="includes/head.jsp"%>
</head>
<body>
	<%@include file="includes/navbar.jsp"%>
	<div class="container">
		<div class="card-header my-3">All Product</div>
		<div class="row">
		<% 
		if( !products.isEmpty()){
			for(Product p:products){%>
				<div class="col-md-3">
				<div class="card w-100" style="width: 18rem;">
					<img src="product.images/hand-bag.jpg" class="card-img-top" alt="Card image cap ">
					<div class="card-body">	
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price"> Price: $<%=p.getPrice()%></h6>
						<h6 class="category">Category :<%=p.getCategory() %></h6>
				        <div class="mt-3 d-flex justify-content-between">
				        	<a href="#" class="btn btn-primary">Add to cart </a>
				        	<a href="#" class="btn btn-primary">Buy Now</a>
				        </div>
					
					</div>
				</div>
			</div>
			<%}
		}
		%>
			
		</div>
	</div>



	<%@include file="includes/footer.jsp"%>
</body>
</html>