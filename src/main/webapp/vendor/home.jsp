<%@ page isELIgnored="false" %>
<%@ include file="util/header.jsp"%>
<%@ include file="util/navbar.jsp"%>
<%@ include file="util/sidbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="col-md-9 col-lg-10 d-md-block bg-light sidebar collapse"
	style="float: Rigth;">


	<div class="table-responsive">
		<table id="myTable" id="example" class="display" width="100%"
			cellspacing="0" class="table table-striped">

			<thead>
				<tr>
					<th scope="col">Product ID</th>
					<th scope="col">Product Name</th>
					<th scope="col">Product Price</th>
					<th scope="col">Quantity</th>
					<th scope="col">Update Stock</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tempProduct" items="${VendorProduct_LIST}">
				<c:url var="tempLink" value="VendorProduct">
						<c:param name="command" value="LOAD" />
						<c:param name="productID" value="${tempProduct.productID}" />
					</c:url>
					<tr>
						<td>${tempProduct.productID}</td>
						<td>${tempProduct.productName}</td>
						<td>${tempProduct.productPrice}</td>
						<td>${tempProduct.quantity}</td>
						<td> 
							<a href="${tempLink}">Update</a> 
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</div>
</div>
</div>
</main>

<script>
		$(document).ready(function() {
			$('#myTable').dataTable();
		});
	</script>

</body>
<footer class="navbar navbar-expand-md navbar-dark fixed-bottom bg-dark">

</footer>