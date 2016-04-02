<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>



<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Product Details</h1>
			<p class="lead">Here is the detailed introduction of products</p>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img alt="image" src="#" style="width: 100%; height: 300px" />
				</div>
				<div class="col-md-5">
					<h3>${product.productName}</h3>
					<p>${product.productDescription}</p>
					<p>
						<strong>Manufacturer</strong>:${product.productManufacturer}
					</p>
					<p>
						<strong>Category</strong>:${product.productCategory}
					</p>
					<p>
						<strong>Condition</strong>:${product.productCondition}
					</p>
					<p>Price:${product.productPrice}</p>
				</div>
			</div>
		</div>


	</div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>