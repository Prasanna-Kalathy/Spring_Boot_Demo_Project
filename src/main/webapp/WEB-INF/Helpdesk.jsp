<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>HelpDesk</title>

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
	margin: 50px 100px 120px 100px;
	padding: 50px 50px 50px 50px;
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

.cen {
	margin-top: 30px;
}

.dis {
	padding-top: 20px;
}

.tex {
	padding-left: 150px;
	padding-bottom: 80px;
}
</style>

</head>
<body>
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
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container clas">
		<h2>
			<strong>HelpDesk</strong>
		</h2>
		<div class="top">
			<div class="container">
				<form action="help" method="post">
					<div class="row tab">
						<div class="row mb-4">
							<div class="col-4 ">
								<label class="clow" for="role">CHOOSE YOUR ROLE :</label>
							</div>

							<div class="col-4 ">
								<select class="form-select" name="role"
									aria-label="Default select example" required>
									<option value="STUDENT">STUDENT</option>
									<option value="TEACHER">TEACHER</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-4 ">
								<label class="clow" for="query">QUERY :</label>
							</div>
							<div class="col-4 ">
								<textarea class="tex" name="query" height="20cm" width="20px" required></textarea>
							</div>
						</div>
						<div class="cen">
							<button type="submit" class="btn btn-outline-warning mb-3 ">Submit</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>

</body>
</html>