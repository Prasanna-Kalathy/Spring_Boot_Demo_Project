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
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Link</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link active dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Careers </a>
							<ul class="dropdown-menu color-dark"
								aria-labelledby="navbarDropdownMenuLink">
								<li><a class="dropdown-item" href="#">About Us</a></li>
								<li><a class="dropdown-item" href="#">HelpDesk</a></li>
								<li><a class="dropdown-item" href="#">Contact Us</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container clas">
		<div class="top">
			<div class="container">
			<h2><strong>Marks View</strong></h2>
				<div class="row dis">
					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label"><strong>Name:</strong>
							${firstname} ${middlename} ${lastname}</label>
					</div>
					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label"><strong>Teacher
								ID:</strong> ${regno}</label>
					</div>
				</div>
				<div class="row dis">
					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label"><strong>Email:</strong>
							${email}</label>
					</div>
					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label"><strong>Department:</strong>
							${department}</label>
					</div>
				</div>
				<div class="tab">
					<table class="table">
					<caption></caption>
						<thead>
							<tr>
								<th class="col1" scope="col">Registration No.</th>
								<th class="col1" scope="col">Course Name</th>
								<th class="col" scope="col">Cyscle Test 1<br>(15)
								</th>
								<th class="col" scope="col">Cyscle Test 2<br>(15)
								</th>
								<th class="col" scope="col">Cyscle Test 3<br>(15)
								</th>
								<th class="col" scope="col">Assignment<br>(5)
								</th>
								<th class="col" scope="col">University Exam<br>(50)
								</th>
								<th class="col" scope="col">Total<br>(100)
								</th>
								<th class="col" scope="col">Percentage<br>(100%)
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Java</td>
								<td>13</td>
								<td>15</td>
								<td>15</td>
								<td>4</td>
								<td>46</td>
								<td>93</td>
								<td>93%</td>
							</tr>
							<tr>
								<th scope="row">1</th>
								<td>Java</td>
								<td>13</td>
								<td>15</td>
								<td>15</td>
								<td>4</td>
								<td>46</td>
								<td>93</td>
								<td>93%</td>
							</tr>
							<tr>
								<th scope="row">1</th>
								<td>Java</td>
								<td>13</td>
								<td>15</td>
								<td>15</td>
								<td>4</td>
								<td>46</td>
								<td>93</td>
								<td>93%</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>

</body>
</html>