<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
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
				<h1>List Users</h1>
				<a href=${pageContext.request.contextPath}/newUser>Create New User</a> <br>
				<p class="loginhere-link" style="color: red;">${errorDelete}</p>
				<table border="1" cellpadding="8" style="width: 800px;">
					<thead>
						<tr>
							<th>ID</th>
							<th>UserName</th>
							<th>PassWord</th>
							<th>Email</th>
							<th>Full Name</th>
							<th>Year Old</th>
							<th>Address</th>
							<th>Hobbies</th>
							<th>Sex</th>
							<th>Level</th>
							<th>Edit</th>
							<th>Delete</th>
							<th>View</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listUsers}" var="list">
							<tr>
								<td>${list.getId()}</td>
								<td>${list.getUserName()}</td>
								<td>*****</td>
								<td>${list.getEmail()}</td>
								<td>${list.getFullName()}</td>
								<td>${list.getYearOld()}</td>
								<td>${list.getAddress()}</td>
								<td>${list.getHobbies()}</td>
								<td>${list.getSex()}</td>
								<td>${list.getLevel()}</td>
								<td><a href=${pageContext.request.contextPath}/updateUser/${list.getId()} />Update</a></td>
								<td><a
									href=${pageContext.request.contextPath}/delete/${list.getId()}
									onclick="return confirm('Bạn chắc chắn muốn xóa?')" />Delete</a></td>
								<td><a href=${pageContext.request.contextPath}/view/${list.getId()} />View</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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