<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>



<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Product Inventory Page</h1>
			<p class="lead">This is a product inventory page</p>
		</div>
		<table class="table table-stripped table-hover">
			<thead>
				<tr class="bg-success">
					<th>Photo Thumb</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Condition</th>
					<th>Price</th>
					<th></th>
				</tr>
			</thead>
			<c:forEach items="${products}" var="product">
				<tr>
					<td><img alt="image" src="#" /></td>
					<td>${product.productName}</td>
					<td>${product.productCategory}</td>
					<td>${product.productCondition}</td>
					<td>${product.productPrice}USD</td>
					<td><a
						href="<spring:url value='/productList/viewProduct/${product.productId}' />">
							<span class="glyphicon glyphicon-info-sign" />
					</a> <a
						href="<spring:url value='/admin/productInventory/deleteProduct/${product.productId}' />">
							<span class="glyphicon glyphicon-remove" />
					</a></td>
				</tr>
			</c:forEach>

		</table>

		<a href='<spring:url value="/admin/productInventory/addProduct"/>'
			class="btn btn-primary">Add Product</a>

 <%@include file="/WEB-INF/views/template/footer.jsp"%>