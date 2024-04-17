<html>
	<head>
	<title>Admin</title>
	<%@include file="allcomponent/allcss.jsp" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
	
	<style type="text/css">
	.back-img{
	background-image:url("images/job3.jpg"); 
	width: 100%;
	height:100%;
	background-repeat: no-repeat;
	background-size: cover;
	
	}	
	</style>
	</head>
	
	<body>
	<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	
	<%@include file="allcomponent/navbar.jsp" %>
	
	
	<div class="container-fluid back-img">
		<div class="text-center">
				<h1 class="text-white p-4">
					<i class="fa-solid fa-user-tie"></i>Welcome Admin
				</h1>
		</div>
	
	</div>
	</body>
</html>