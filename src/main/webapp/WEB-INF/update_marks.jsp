<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Marks Update</title>
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

.col1 {
	color: #FFF000;
	margin-bottom: 20px;
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
	response.setHeader("Progno", "no-cache");
	response.setHeader("Expires", "0");
	if (session.getAttribute("tusername") == null) {
		response.sendRedirect("teacher_log");
	}
	%>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="/api/vi/student_univ_home">University</a>
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
							aria-current="page" href="/api/vi/tch_home">TEACHER HOME PAGE</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link active dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Careers </a>
							<ul class="dropdown-menu color-dark"
								aria-labelledby="navbarDropdownMenuLink">
								<li><a class="dropdown-item" href="/api/vi/helpdesk">HelpDesk</a></li>
								<li><a type="button" class="dropdown-item"
									href="/api/vi/teacher_logout">LOGOUT</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container clas">
		<h2>
			<strong>Marks Update</strong>
		</h2>
		<div class="top">
			<div class="container">
				<div class="row dis">
					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label"><strong>Name:</strong>
							${sp.firstname} ${sp.middlename} ${sp.lastname}</label>
					</div>
					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label"><strong>Teacher
								ID:</strong> ${sp.teacherId}</label>
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
				<form action="marks_add">
					<div class="row tab">
						<table class="table">
							<caption></caption>
							<thead>
								<tr>
									<th class="col" scope="col">Student Name</th>
									<th class="col" scope="col">Course Name</th>
									<th class="col" scope="col">Cycle Test 1<br>(15)
									</th>
									<th class="col" scope="col">Cycle Test 2<br>(15)
									</th>
									<th class="col" scope="col">Cycle Test 3<br>(15)
									</th>
									<th class="col" scope="col">Assignment<br>(5)
									</th>
									<th class="col" scope="col">University Exam<br>(50)
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="text" class="form-control" id="username"
										name="username" required></td>
									<td><input type="text" class="form-control"
										id="courseName" name="courseName" required></td>
									<td><input type="number" class="form-control" id="ct1"
										name="ct1" required></td>
									<td><input type="number" class="form-control" id="ct2"
										name="ct2" required></td>
									<td><input type="number" class="form-control" id="ct3"
										name="ct3" required></td>
									<td><input type="number" class="form-control" id="asg"
										name="asg" required></td>
									<td><input type="number" class="form-control" id="ue"
										name="ue" required></td>
									<td><button type="submit"
											class="btn btn-outline-primary mb-3 ">Submit</button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>
		<div class="row back">
			<div class="col-3">
				<a type="button" class="btn btn-dark" href="/api/vi/tch_home">BACK</a>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>

</body>
</html>