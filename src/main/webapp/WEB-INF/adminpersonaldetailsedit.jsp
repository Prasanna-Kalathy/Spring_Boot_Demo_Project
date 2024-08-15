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

<title>Personal Details Form</title>
</head>
<style>
body {
	background-color: #987bd1;
	background:
		url(https://image.freepik.com/free-vector/orange-abstract-background-with-lines_1123-45.jpg);
	background-size: 100% 100%;
	background-size: cover;
}

.clow {
	color: white;
	font-size: 15px;
}

.addres {
	color: black;
	font-size: 15px;
}

.con-color {
	background-color: #000000;
	border-style: outset;
	border-color: gold;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 20px;
	opacity: 80%;
}

table {
	background-color: rgba(184, 21, 206, 0.856);
	opacity: 80%;
	width: 100%;
	height: 100%;
}

.con-col {
	background-color: #808080;
	padding-left: 10px;
	padding-right: 10px;
}

.cen {
	text-align: center;
	margin-top: 8px;
}

.dis {
	color: white;
	margin-top: 20px;
	margin-bottom: 20px;
}

.btn {
	text-decoration: none;
	color: white;
}

.back {
	margin-top: 10px;
	margin-left: 10px;
}
</style>

</head>
<body>

	<%
	response.setHeader("Progno", "no-cache");
	response.setHeader("Expires", "0");
	if (session.getAttribute("ausername") == null) {
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
		<form action="adminform" method="post">
			<h2 class="text-center colw">
				<strong>PERSONAL DETAILS FORM PAGE</strong>
			</h2>

			<div class="con-color">
				<table class="con-color">
					<caption></caption>
					<th id="tl"></th>
					<div class="row dis">
						<div class="row dis">
							<div class="col-4 ">
								<div class="form-group">
									<label class="clow" for="firstname"><strong>First
											Name</strong></label> <input type="text" class="form-control" name="firstname"
										id="firstname" placeholder="Firstname" required>
								</div>

							</div>
							<div class="col-4">
								<div class="form-group">
									<label class="clow" for="middlename"><strong>Middle
											Name</strong></label> <input type="text" class="form-control"
										name="middlename" id="middlename" placeholder="Middlename"
										required>
								</div>

							</div>
							<div class="col-4">
								<div class="form-group">
									<label class="clow" for="lastname"><strong>Last
											Name</strong></label> <input type="text" class="form-control" name="lastname"
										id="lastname" placeholder="Lastname" required>
								</div>

							</div>
						</div>
						<div class="col-4 mt-1 mb-1 ">
							<div class="form-group">
								<label class="clow" for="adminid"><strong>Admin
										Id</strong></label> <input type="text" class="form-control" name="adminid"
									id="adminid" placeholder="Admin Id" required>
							</div>
						</div>
						<div class="col-4 mt-1 mb-1 ">
							<div class="form-group">
								<label class="clow" for="ausername"><strong>Username</strong></label>
								<input type="text" class="form-control" name="ausername"
									id="ausername" value=${ausername } required>
							</div>
						</div>

						<div class="col-4 mt-1 mb-1 ">
							<div class="form-group">
								<label class="clow" for="contactno"><strong>Contact
										Number</strong></label> <input type="text" class="form-control" id="contactno"
									name="contactno" placeholder="Contact Number" required>
							</div>
						</div>

					</div>

					<div class="row dis">
						<div class="col-4 pb-3 pt-1 mt-1 mb-1">
							<label class="clow" for="dateOfBirth"><strong>Date
									of Birth</strong></label>
							<div class="input-group date" data-provide="datepicker">
								<input type="date" class="form-control" name="dateOfBirth"
									required>
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-th"></span>
								</div>
							</div>
						</div>
						<div class="col-6 mt-1 mb-1">
							<label class="clow text-center" for="gender"><strong>Gender</strong></label>
							<div class="row dis">
								<div class="col-2">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="gender"
											value="Male" id="flexRadioDefault1" checked required>
										<label class="form-check-label" for="flexRadioDefault1">
											<strong>Male</strong>
										</label>
									</div>
								</div>
								<div class="col-2">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="gender"
											value="Female" id="flexRadioDefault2" required> <label
											class="form-check-label" for="flexRadioDefault2"> <strong>Female</strong>
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row dis">
						<div class="col-4 mt-1 mb-1 ">
							<div class="form-group">
								<label class="clow" for="bloodgroup"><strong>Blood
										Group</strong></label> <input type="text" class="form-control" id="bloodgroup"
									name="bloodgroup" placeholder="Blood Group" required>
							</div>
						</div>
						<div class="col-4 mt-1 mb-1">
							<div class="form-group">
								<label class="clow" for="email"><strong>Email</strong></label> <input
									type="email" class="form-control" name="email" id="email"
									placeholder="Email" required>
							</div>
						</div>
					</div>
					<div class="container con-col">
						<div class="row">
							<div class="col-6">
								<div class="form-group dis">
									<label class="addres" for="address1"><strong>Address
											(Line 1)</strong></label> <input type="text" class="form-control"
										id="address1" name="address1" placeholder="House Number"
										required>
								</div>
							</div>
							<div class="col-6">
								<div class="form-group dis">
									<label class="addres" for="address2"><strong>Address
											(Line 2)</strong></label> <input type="text" class="form-control"
										id="address2" name="address2" placeholder="Street or Locality"
										required>
								</div>
							</div>
						</div>
						<div class="row dis pb-3">
							<div class="col-4 ">
								<div class="form-group">
									<label class="addres" for="city"><strong>City</strong></label>
									<input type="text" class="form-control" id="city" name="city"
										placeholder="City" required>
								</div>

							</div>
							<div class="col-4">
								<div class="form-group">
									<label class="addres" for="state"><strong>State</strong></label>
									<input type="text" class="form-control" id="state" name="state"
										placeholder="State" required>
								</div>

							</div>
							<div class="col-4">
								<div class="form-group">
									<label class="addres" for="zipcode"><strong>Zip
											Code</strong></label> <input type="number" class="form-control" id="zipcode"
										placeholder="Zipcode" name="zipcode" maxlength="6" required>
								</div>
							</div>
						</div>
					</div>
					<div class="cen">
						<button type="submit" class="btn btn-primary mb-3">Submit</button>
						<button type="reset" class="btn btn-primary mb-3 ">Reset</button>
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
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous">
		$.fn.datepicker.defaults.format = "mm/dd/yyyy";
		$('.datepicker').datepicker({
			startDate : '-3d'
		});
	</script>

</body>
</html>