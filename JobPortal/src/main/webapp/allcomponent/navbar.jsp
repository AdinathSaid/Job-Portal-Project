 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa-brands fa-usps"></i>Job Portal</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp">Home</a></li>
					
				<c:if test="${userobj.role eq 'admin' }">
				<li class="nav-item"><a class="nav-link" href="addjob.jsp">Post Job</a></li>
				<li class="nav-item"><a class="nav-link" href="viewjob.jsp">View Job</a></li>
				</c:if>	
			
			</ul>
			<form class="form-inline my-2 my-lg-0">
			
				<c:if test="${not empty userobj }">
				
				<a href="login.jsp" class="btn btn-outline-primary">Logout</a>
				</c:if>
				
				<c:if test="${empty userobj }">
				<a href="login.jsp" class="btn btn-outline-primary">Login</a>
				<a href="signup.jsp" class="btn btn-outline-primary">Signup</a>
				</c:if>
			
				
				
			</form>
		</div>
	</div>
</nav>