<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">

<title>personaldetailsadminview</title>
<style>
body {
	background-color: #987bd1;
	background:
		url(https://image.freepik.com/free-vector/orange-abstract-background-with-lines_1123-45.jpg);
	background-size: 100% 100%;
	background-size: cover;
}

.con-color {
	background-color: #000000;
	color: white;
	border-style: outset;
	border-color: gold;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 20px;
	opacity: 90%;
}

table {
	background-color: rgba(184, 21, 206, 0.856);
	opaCity: 80%;
	width: 100%;
	height: 100%;
}

.dis {
	margin-top: 20px;
	margin-bottom: 20px;
}

.container {
	margin-bottom: 600px;
}

a:link {
	text-decoration: none;
}

a {
	color: white;
}

a:hover {
	color: black;
}
.back {
	margin-top: 10px;
	margin-left: 10px;
}
</style>


</head>
<body>

<%

response.setHeader("Progno","no-cache");
response.setHeader("Expires","0");
if(session.getAttribute("ausername")==null){
	response.sendRedirect("admin_log");
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
							aria-current="page" href="/api/vi/admin_home">ADMIN HOME PAGE</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link active dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Careers </a>
							<ul class="dropdown-menu color-dark"
								aria-labelledby="navbarDropdownMenuLink">
								<li><a class="dropdown-item" href="/api/vi/admin_logout">LOGOUT</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container">
		<form action="adminview">
			<h2 class="text-center colw">PERSONAL DETAILS VIEW PAGE</h2>
			<div class="con-color">
				<table>
				<caption></caption>
				<th id="tl"></th>
					<div class="row dis">
						<div class="col-6">
							<label for="exampleFormControlInput1" class="form-label"><strong>Username:
							</strong>${obj.ausername}</label>
						</div>
						<div class="col-6">
							<label for="exampleFormControlInput1" class="form-label"><strong>Admin
									Id: </strong>${obj.adminid}</label>
						</div>
					</div>
					<div class="row dis">
						<div class="col-6">
							<label for="exampleFormControlInput1" class="form-label"><strong>Name:
							</strong>${obj.firstname} ${obj.middlename} ${obj.lastname}</label>
						</div>
						<div class="col-6">
							<label for="exampleFormControlInput1" class="form-label"><strong>Date
									of Birth: </strong>${obj.dateOfBirth}</label>
						</div>

					</div>
					<div class="row dis">
						<div class="col-6">
							<label for="exampleFormControlInput1" class="form-label"><strong>Gender:
							</strong>${obj.gender}</label>
						</div>
						<div class="col-6">
							<label for="exampleFormControlInput1" class="form-label"><strong>Email:
							</strong>${obj.email}</label>
						</div>

					</div>
					<div class="row dis">
						<div class="col-6">
							<label for="exampleFormControlInput1" class="form-label"><strong>Blood
									Group: </strong>${obj.bloodgroup}</label>
						</div>
					</div>
					<div class="row dis">
						<div class="col-12">
							<label for="exampleFormControlInput1" class="form-label"><strong>Address:
							</strong>${obj.address1} ${obj.address2}</label>
						</div>
					</div>
					<div class="row dis">
						<div class="col-6">
							<label for="exampleFormControlInput1" class="form-label"><strong>City:
							</strong>${obj.city}</label>
						</div>
					</div>
					<div class="row dis">
						<div class="col-4">
							<label for="exampleFormControlInput1" class="form-label"><strong>State:
							</strong>${obj.state}</label>
						</div>
					</div>
					<div class="row dis">
						<div class="col-4">
							<label for="exampleFormControlInput1" class="form-label"><strong>Zip
									Code: </strong>${obj.zipcode}</label>
						</div>
					</div>
				</table>
			</div>
		</form>
		<div class="row back">
			<div class="col-3">
				<a type="button" class="btn btn-dark" href="/api/vi/admin_home">BACK</a>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous">
                
            </script>

</body>
</html>