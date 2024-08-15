<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Confirmation page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">

<style>
body {
	background-color: #a6a6a6;
	color: white
}

.base {
	padding-left: 10px;
	margin-top: 20px;
	text-align: center;
}

.cen {
	margin-top: 20px;
	text-align: center;
	margin-top: 8px;
	text-decoration: none;
	color: black;
}

.text {
	text-align: center;
	margin-top: 8px;
	text-decoration: none;
	color: black;
	margin-top: 20px;
}

.ank {
	text-align: center;
	margin-top: 8px;
	text-decoration: none;
	color: white;
}

a:link {
	text-decoration: none;
}

a {
	color: black;
}

a:hover {
	color: #4ccb4c;
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
				<a class="navbar-brand" href="#">University</a>
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
								<li><a class="dropdown-item" href="/api/vi/teacher_logout">LOGOUT</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<h1 class="text">
				<strong><em>Marks is uploaded<br><br>Go to Add Marks Page<br>
				<a type="button" class="btn btn-warning" href="/api/vi/marks">MARKS PAGE</a></em></strong>
			</h1>
		</div>
	</div>
</body>
</html>