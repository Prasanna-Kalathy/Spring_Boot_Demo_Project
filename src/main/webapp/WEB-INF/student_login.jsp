<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>STUDENT LOGIN</title>

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

.center {
	text-align: center;
	margin-top: 60px;
	margin-left: 600px;
	margin-right: 617px;
	border-color: gold;
	border-style: outset;
}

.cen {
	text-align: center;
	margin-left: 88px;
	margin-top: 8px;
}

.al {
	background-color: #000000;
	color:white;
}
p{
color:red;
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
	<div class="container-fluid">
		<div class="center" class="al">

			<div class="row">
				<div class="col-12 ">
					<div class="card al" style="width: 18rem;">
						<img src="/login.jpg" class="card-img-top"
							style="width: 100%; height: 55%" alt="..">
						<div class="card-body">
							<h5 class="card-title">STUDENT LOGIN</h5>
							<form action="student_hom" method="post">
								<div class="col-md">
									<div class="form-group">
										<label for="username">Username</label> <input type="text"
											class="form-control" name="username" id="username" required>
										<p>${validu}</p>
									</div>

								</div>
								<div class="col-md">
									<div class="form-group">
										<label for="password">Password</label> <input type="password"
											class="form-control" name="password" id="password" required>
										<p>${validp}</p>
									</div>

								</div>
								<div class="cen">
									<div class="form-row">

										<div class="col-md-1">
											<button type="submit" class="btn btn-primary">Submit</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>
</body>
</html>