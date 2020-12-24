<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>
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
	<!------------------------------------   ------------------------------------------>
		<article class="col">
			<div align="center">
				<h1>View User</h1>
				<a href=${pageContext.request.contextPath}/home>Home Users</a> <br>
				<form:form action="/XML_SpringMVC/view" modelAttribute="listUser" method="Post">
					<table border="1" cellpadding="10" style="width: 600px;">
						<tr>
							<td>ID</td>
							<td><label>${listView.getId()}</label></td>
						</tr>
						<tr>
							<td>UserName</td>
							<td><label>${listView.getUserName()}</label></td>
						</tr>
						<tr>
							<td>PassWord</td>
							<td><label>${listView.getPassWord()}</label></td>
						</tr>
						<tr>
							<td>Email</td>
							<td><label>${listView.getEmail()}</label></td>
						</tr>
						<tr>
							<td>Full Name</td>
							<td><label>${listView.getFullName()}</label></td>
						</tr>
						<tr>
							<td>Year Old</td>
							<td><label>${listView.getYearOld()}</label></td>
						</tr>
						<tr>
							<td>Address</td>
							<td><label>${listView.getAddress()}</label></td>
						</tr>
						<tr>
							<td>Hobbies</td>
							<td><label>${listView.getHobbies()}</label></td>
						</tr>
						<tr>
							<td>Sex</td>
							<td><label>${listView.getSex()}</label></td>
						</tr>
						<tr>
							<td>Lever</td>
							<td><label>${listView.getLevel()}</label></td>
						</tr>
					</table>
				</form:form>
			</div>
		</article>
		<br>
		<!------------------------------------   ------------------------------------------>
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