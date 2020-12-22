<%-- <%@ page pageEncoding="UTF-8"%> --%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet" href="../fontawesome/css/all.min.css">
</head>
<body>
	<main class="container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="home">ThanhBinh</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="home"><i
							class="fa fa-home"></i> Home<span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
				</ul>
			</div>
		</nav>
		<!------------------------------------   ------------------------------------------>
		<article class="col">
			<div align="center">
				<h1>Create User</h1>
				<a href="home">Home Users</a> <br>
				<form action="save-user" method="Post">
					<table border="1" cellpadding="10">
						<tr>
							<td>UserName</td>
							<td><input type="text" name="username" required="required" maxlength="30"></td>
						</tr>
						<tr>
							<td>PassWord</td>
							<td><input type="password" name="password" required="required" maxlength="30"></td>
						</tr>
						<tr>
							<td>Email</td>
							<td><input type="email" name="email" required="required" maxlength="30"></td>
						</tr>
						<tr>
							<td>Full Name</td>
							<td><input type="text" name="fullName" maxlength="30"></td>
						</tr>
						<tr>
							<td>Year Old</td>
							<td><input type="number" name="yearOld" ></td>
						</tr>
						<tr>
							<td>Address</td>
							<td><input type="text" name="address" maxlength="30"></td>
						</tr>
						<tr>
							<td>Hobbies</td>
							<td>
								<input type="checkbox" name="hobbies" value="Soccer">
								<label>Soccer</label>&emsp;
								<input type="checkbox" name="hobbies" value="Swimming">
								<label>Swimming</label><br>
								<input type="checkbox" name="hobbies" value="Music">
								<label>Music</label>&emsp;
								<input type="checkbox" name="hobbies" value="Other">
								<label>Other</label>
							</td>
						</tr>
						<tr>
							<td>Sex</td>
							<td><select name="sex">
									<option value="" label="--option--" />
									<option value="Male" label="Male" />
									<option value="Female" label="Female" />
									<option value="Other" label="Other" />
								</select>
							</td>
						</tr>
						<tr>
							<td>Lever</td>
							<td><select name="level">
									<option value="" label="--option--"/>
									<option value="User" label="User"/>
									<option value="Admin" label="Admin" />
									<option value="Other" label="Other" />
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;"><button type="submit" style="width: 100px;" >Save</button></td>
						</tr>
					</table>
				</form>
			</div>
		</article>
		<br>
		<!------------------------------------   ------------------------------------------>
		<footer class="page-footer font-small blue">
			<div class="card">
				<div class="footer-copyright text-center py-3 bg-light">
					© 2020 Copyright: <a href="#"> Thanh Binh</a>
				</div>
			</div>
		</footer>
	</main>

</body>
</html>