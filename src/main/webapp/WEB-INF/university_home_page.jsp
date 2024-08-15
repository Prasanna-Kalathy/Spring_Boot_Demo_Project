<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title class="text-light bg-dark">Welcome to University</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">

<style>
body {
	background-color: #987bd1;
	background:url(https://images.unsplash.com/photo-1541339907198-e08756dedf3f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60);;
	background-size: 100% 100%;
	background-size: cover;
}

.cen {
	margin-top: 100px;
	background-color: #000000;
	color: #3232ff;
	border-radius: 90px;
	text-align: center;
	opacity: 80%;
	font-style: oblique;
	font-size: 24px;
}

.dow {
	padding-top: 80px;
	border-radius: 2px;
}

.tr {
	margin: auto;
	text-align: center;
	border-radius: 2px;
}

.trd {
	padding-top: 15px;
	padding-bottom: 15px;
	padding-left: 80px;
	padding-right: 80px;
	border-style: inset;
	border-color: rgb(14, 10, 10);
	box-shadow: 2px 2px;
	border-radius: 150px;
	border-color: #add8e6;
	color: rgb(255, 255, 255);
}

.ter {
	background-color: #595959;
}

a:link {
	text-decoration: none;
}
h1{
text-align:center;
font-size:64px;
margin-top:60px;
}
</style>

</head>
<body>
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
					</ul>
				</div>
			</div>
		</nav>

	</div>
	<div class="container-fluid">
		<h1><strong><em>Welcome To The University</em></strong></h1>
		<div class="row dis">
			<dis class="col-4">
			<div class="card cen">
				<div class="card-body">
					<h2>STUDENT</h2>
					<table class="tr">
						<caption></caption>
						<th id="tl"></th>
						<tr class="ter">
							<td class="trd"><a href="/api/vi/student_log"><strong>LOGIN</strong></a></td>
						</tr>

					</table>
				</div>
			</div>
			</dis>
			<dis class="col-4">
			<div class="card cen">
				<div class="card-body">
					<h2>TEACHER</h2>
					<table class="tr">
						<caption></caption>
						<th id="tl"></th>
						<tr class="ter">
							<td class="trd"><a href="/api/vi/teacher_log"><strong>LOGIN</strong></a></td>
						</tr>

					</table>
				</div>
			</div>
			</dis>
			<dis class="col-4">
			<div class="card cen">
				<div class="card-body">
					<h2>ADMIN</h2>
					<table class="tr">
						<caption></caption>
						<th id="tl"></th>
						<tr class="ter">
							<td class="trd"><a href="/api/vi/admin_log"><strong>LOGIN</strong></a></td>
						</tr>

					</table>
				</div>
			</div>
			</dis>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>

</body>
</html>