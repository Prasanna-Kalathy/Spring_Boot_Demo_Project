<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Teacher Home Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">

<style>
body {
	background-color: grey;
	background:
		url(https://image.freepik.com/free-vector/orange-abstract-background-with-lines_1123-45.jpg);
	background-size: 100% 100%;
	background-size: cover;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	padding: 20px 20px;
	text-decoration: none;
}

h2 {
	color: rgb(21, 21, 121);
	text-align: center;
}

.cola-3 {
	margin: auto;
	margin-top: 100px;
	margin-left: 300px;
	margin-right: 300px;
	border-style: outset;
	border-color: blue;
	border-radius: 15px;
}

li a:hover {
	background-color: #111;
}

.tr {
	margin: auto;
	text-align: center;
}

.trd {
	padding-top: 50px;
	padding-bottom: 50px;
	padding-left: 130px;
	padding-right: 130px;
	border-style: inset;
	border-color: blue;
	box-shadow: 2px 2px;
	border-radius: 15px;
}

a {
	color: black;
	text-decoration: none;
}

.trd:hover {
	background-color: blue;
	border-color: black;
	box-shadow: 2px 2px;
	color: black;
}

a:hover {
	color: white;
}

.ki {
	float: right;
}
</style>

</head>
<body>

<%

response.setHeader("Progno","no-cache");
response.setHeader("Expires","0");

if(session.getAttribute("tusername")==null){
	response.sendRedirect("teacher_log");
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
	<div class="container">
		<div class="cola-3">
			<h2>
				<strong>TEACHER</strong>
			</h2>
			<table class="tr">
			<caption></caption>
			<th id="tl"></th>
				<tr>
					<td class="trd"><a href="/api/vi/teacher"><strong>ADD
								ACADEMIC DETAILS</strong></a></td>
				</tr>
				<tr>
					<td class="trd"><a href="/api/vi/teacherview"><strong>VIEW
								AND UPDATE ACADEMIC DETAILS VIEW</strong></a></td>
				</tr>
				<tr>
					<td class="trd"><a href="/api/vi/teacher_student_assigned"><strong>STUDENTS
								ASSIGNED</strong></a></td>
				</tr>
				<tr>
					<td class="trd"><a href="/api/vi/marks"><strong>UPDATE
								MARKS</strong></a></td>
				</tr>
			</table>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>

</body>
</html>