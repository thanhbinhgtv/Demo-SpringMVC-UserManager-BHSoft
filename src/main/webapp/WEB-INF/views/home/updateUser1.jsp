<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<link rel="stylesheet" href='<c:url  value="/resources/css/main.css" />'>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- Header -->
	<header id="header">
		<div class="inner">
			<a href=${pageContext.request.contextPath}/home class="logo">Thanh Bình</a>
			<nav id="nav">
				<a href=${pageContext.request.contextPath}/home>Home</a>
				<a href=${pageContext.request.contextPath}/logout>Logout</a>
				<a style="color: red;"><b>Hello : ${username}</b></a>
			</nav>
		</div>
	</header>
	<a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>
	<!-- Article -->
	<!-- Table -->
	<section id="main">
		<article class="col">
			<div align="center">
				<h1>Update User</h1>
				<a href=${pageContext.request.contextPath}/home>Home Users</a> <br>
				<p class="loginhere-link" style="color: red;">${errorNew}</p>
				<form action="<c:url value="update"/>" modelAttribute="listUser" method="Post">
					<table border="1" cellpadding="10" style="width: 600px;">
						<tr>
							<td>ID</td>
							<td><input type="text" value="${listUser.getId()}" name="id" readonly="readonly"  style="background-color: #E5E5E5;"></td>
						</tr>
						<tr>
							<td>UserName</td>
							<td><input type="text" value="${listUser.getUserName()}" name="username" readonly="readonly" style="background-color: #E5E5E5;"></td>
						</tr>
						<tr>
							<td>PassWord</td>
							<td><input type="password" name="password" value="${listUser.getPassWord()}" required="required" maxlength="30"></td>
						</tr>
						<tr>
							<td>Email</td>
							<td><input type="email" name="email" value="${listUser.getEmail()}" required="required" maxlength="30"></td>
						</tr>
						<tr>
							<td>Full Name</td>
							<td><input type="text" name="fullName" value="${listUser.getFullName()}" maxlength="30"></td>
						</tr>
						<tr>
							<td>Year Old</td>
							<td><input type="number" name="yearOld" value="${listUser.getYearOld()}" maxlength="2"></td>
						</tr>
						<tr>
							<td>Address</td>
							<td><input type="text" name="address" value="${listUser.getAddress()}" maxlength="100"></td>
						</tr>
						<tr>
							<td>Hobbies</td>
							<td>									
								<input type="checkbox" name="hobbies" id="Soccer" value="Soccer">
								<label for="Soccer">Soccer</label>&emsp;&emsp;
								<input type="checkbox" name="hobbies" id="Swimming" value="Swimming">
								<label for="Swimming"  style="margin-left: 5px;">Swimming</label><br>
								<input type="checkbox" name="hobbies" id="Music" value="Music">
								<label for="Music">Music</label>&emsp;&emsp;&emsp;
								<input type="checkbox" name="hobbies" id="Other" value="Other">
								<label for="Other">Other</label>
							</td>
						</tr>
						<tr>
							<td>Sex</td>
							<td><select name="sex" >
									<option value="${listUser.getSex()}" label="${listUser.getSex()}" />
									<option value="Male" label="Male" />
									<option value="Female" label="Female" />
									<option value="Other" label="Other" />
								</select>
							</td>
						</tr>
						<tr>
							<td>Lever</td>
							<td><select name="level">
									<option value="${listUser.getLevel()}" label="${listUser.getLevel()}"/>
									<option value="User" label="User"/>
									<option value="Admin" label="Admin" />
									<option value="Other" label="Other" />
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;"><button type="submit" style="width: 100px;">Update</button></td>
						</tr>
					</table>
				</form>
			</div>
		</article>
	</section>
	<section id="main">
		<div class="inner">
			<section>
				<h4 className="h1bgsp">Thông Tin Chức Năng</h4>
				<hr />
				<br />
				<div className="table-wrapper">
					<table className="alt">
						<thead>
							<tr>
								<th>Admin</th>
								<th>User</th>
								<th>Other</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>No information</td>
								<td>No information</td>
								<td>No information</td>
							</tr>
							<tr>
								<td>No information</td>
								<td>No information</td>
								<td>No information</td>
							</tr>
							<tr>
								<td>No information</td>
								<td>No information</td>
								<td>No information</td>
							</tr>
						</tbody>
					</table>
				</div>
			</section>
		</div>
	</section>

	<!-- Footer -->
	<section id="footer">
		<div class="inner">
			<header>
				<h2>Get in Touch</h2>
			</header>

			<div class="copyright">
				&copy; Untitled Design: <a href="https://templated.co/">TEMPLATED</a>.
				Images <a href="https://unsplash.com/">Unsplash</a>
			</div>
		</div>
	</section>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>