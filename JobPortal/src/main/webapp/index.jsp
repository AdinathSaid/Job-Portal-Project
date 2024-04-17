<%@page import="com.database.DatabaseConnect"%>
<%@page import="java.sql.Connection"%>
<html>
	<head>
	<title>Job portal</title>
	<%@include file="allcomponent/allcss.jsp" %>
	
	<style type="text/css">
	.back-img{
	background-image:url("images/job2.jpg"); 
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
	
	}
	footer {
  text-align: center;
  padding: 3px;
  background-color:wheat;
  color: Black;
}
	
	</style>
	</head>
	
	<body>
	<%@include file="allcomponent/navbar.jsp" %>
	
	
	<div class="container-fluid back-img">
		<div class="text-center">
				<h1 class="text-white p-4">
					<i class="fa-brands fa-usps"></i> Job Portal
				</h1>
		</div>
	
	</div>
	<footer>
  <p>Design & Devloped by Adinath Said<br>
  <a href="saidadinath04@gmail.com">saidadinath0411@gmail.com</a></p>
</footer>
	</body>
</html>