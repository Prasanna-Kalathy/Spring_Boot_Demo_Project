<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Teacher Assigned to Student View</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">

<style>
body {
	background-color: #987bd1;
	background:
		url(https://image.freepik.com/free-vector/orange-abstract-background-with-lines_1123-45.jpg);
	background-size: 100% 100%;
	background-size: cover;
}

.clas {
	text-align: center;
	opacity: 85%;
}

.tab {
	background-color: #38404D;
	color: white;
	border-style: inset;
	margin-bottom: 13px;
	border-radius: 2%;
	border-color: #FFF000;
}

td {
	color: white;
	border-style: inset;
	border-radius: 2%;
	border-color: #FFF000;
}

tr {
	color: white;
	border-style: inset;
	border-radius: 2%;
	border-color: #FFF000;
}

th {
	color: white;
}

.col {
	color: #FFF000;
}

.top {
	background-color: #000000;
	color: white;
	border-style: outset;
	border-radius: 2%;
	margin-bottom: 20px;
	border-color: #FFF000;
	opacity: 95%;
}
</style>
</head>
<body>
<%
response.setHeader("Progno","no-cache");
response.setHeader("Expires","0");
if(session.getAttribute("username")==null){
	response.sendRedirect("student_log");
}
%>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Universiy</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
					aria-controls="navbarNavDropdown" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavDropdown">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/api/vi/student_univ_home">Home</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/api/vi/std_home">STUDENT HOME PAGE</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link active dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Careers </a>
							<ul class="dropdown-menu color-dark"
								aria-labelledby="navbarDropdownMenuLink">
								<li><a class="dropdown-item" href="/api/vi/helpdesk">HelpDesk</a></li>
								<li><a class="dropdown-item" href="/api/vi/student_logout">LOGOUT</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container clas">
		<h2>
			<strong>Teacher Assigned View</strong>
		</h2>
		<div class="top">
			<div class="container">
				<div class="row dis">
					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label"><strong>Name:</strong>
							${sp.firstname} ${sp.middlename} ${sp.lastname}</label>
					</div>
					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label"><strong>Registration
								No.:</strong> ${sp.regno}</label>
					</div>
				</div>
				<div class="row dis">
					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label"><strong>Email:</strong>
							${sp.email}</label>
					</div>
					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label"><strong>Department:</strong>
							${sp.department}</label>
					</div>
				</div>
				<div class="tab">
					<table class="table">
					<caption></caption>
						<thead>
							<tr>
								<th class="col" scope="col">Teacher ID</th>
								<th class="col" scope="col">Teacher Name</th>
								<th class="col" scope="col">Courses</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${list}" var="curt">
								<tr>
									<td>${curt.teacherId}</td>
									<td>${curt.tusername}</td>
									<td>${curt.courseName}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row back">
			<div class="col-3">
				<a type="button" class="btn btn-dark" href="/api/vi/std_home">BACK</a>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>

</body>
</html>