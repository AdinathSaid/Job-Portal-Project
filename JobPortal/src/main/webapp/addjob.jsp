<html>
<head>
<title>Add Job</title>
<%@include file="allcomponent/allcss.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


</style>
</head>

<body style="background-color: #f0f1f2">
<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="allcomponent/navbar.jsp"%>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				

				<h2 class="text-center mb-4">Job Details</h2>
				<c:if test="${not empty succMsg}">
					<div class="alert alert-success" role="alert">${succMsg}</div>
					<c:remove var="succMsg" />
				</c:if>
				<form action="addjob" method="post">

					
					<div class="mb-3">
						<label for="jobtitle" class="form-label">Enter Title:</label> <input
							type="text" class="form-control" name="jobtitle">
					</div>
					<div class="mb-3">
						<label for="location" class="form-label">Location:</label> <select
							id="location" name="location" class="form-select" required>
							<option value="Pune">Pune</option>
							<option value="Banglore">Banglore</option>
							<option value="Mumbai">Mumbai</option>
							<option value="Chennai">Chennai</option>
							<option value="Noida">Noida</option>
							<option value="Hydrabad">Hydrabad</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="category" class="form-label">Category:</label> <select
							id="category" name="category" class="form-select" required>
							<option value="IT">IT</option>
							<option value="Finance">Finance</option>
							<option value="business-management">Business Management</option>
							<option value="marketing">Marketing</option>
							<option value="Research & Development">R&D</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="status" class="form-label">Status:</label> <select
							id="status" name="status" class="form-select" required>
							<option value="Active">Active</option>
							<option value="inert">Inert</option>

						</select>
					</div>
					<textarea class="form-control mb-3" name="description"
						placeholder="Enter requirement here" required="required"></textarea>


					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" required>Confirm
						Add

					</div>
					<button type="submit" class="btn btn-primary">Add Job</button>
					<a href="admin.jsp" class="btn btn-outline-secondary">Back</a>
				</form>
			</div>
		</div>
	</div>



</body>
</html>