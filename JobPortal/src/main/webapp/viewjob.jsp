<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.database.DatabaseConnect"%>
<%@page import="com.dao.JobDao"%>
<%@ page import="com.dao.*"%>
<html>
<head>
<title>View Job</title>
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
		<div class="row">
			<div class="col-md-12">
				
				<h2 class="text-center text-primary">Careers</h2>
				<c:if test="${not empty succMsg}">
					<div class="alert alert-success" role="alert">${succMsg}</div>
					<c:remove var="succMsg" />
				</c:if>
				<div class="row">
					<%
					JobDao jobDao = new JobDao(DatabaseConnect.getconn());
					List<Jobs> list = jobDao.getAllJobs();
					for (Jobs j : list) {
					%>
					<div class="col-md-4 mb-4">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title"><%=j.getTitle()%></h5>
								<h6>
									Category:<%=j.getCategory()%></h6>
								<h6 class="card-subtitle mb-2 text-muted">
									<i class="fa-solid fa-location-dot ml-2 mr-1"></i><%=j.getLocation()%></h6>
								<p class="card-text">
									Required Skills:<br><%=j.getDescription()%></p>
								<h6><%=j.getPostdate()%></h6>
							</div>
							<div class="text-center">
								<a href="editjob.jsp?id=<%=j.getId()%>"><i class="fa-regular fa-pen-to-square fa-lg mr"  style="margin-right: 15px;margin-bottom: 20px;"></i></a>
								<a href="delete?id=<%=j.getId() %>"><i class="fa-solid fa-trash fa-lg"></i></a>
							</div>

						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</div>
	</div>


</body>
</html>