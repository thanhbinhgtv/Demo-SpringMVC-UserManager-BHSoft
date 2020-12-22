<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>
	<link rel="stylesheet" href='<c:url  value="/resources/css/bootstrap.min.css" />'>
</head>
<body>
	<main class="container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href=${pageContext.request.contextPath}/home>ThanhBinh</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href=${pageContext.request.contextPath}/home><i
							class="fa fa-home"></i> Home<span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item"><a class="nav-link" href=${pageContext.request.contextPath}/logout>Logout</a>
				</ul>
			</div>
		</nav>
		<!------------------------------------   ------------------------------------------>
		<article class="col">
			<div align="center">
				<h1>View User</h1>
				<a href=${pageContext.request.contextPath}/home>Home Users</a> <br>
				<form:form action="/XML_SpringMVC/view" modelAttribute="listUser" method="Post">
					<table border="1" cellpadding="10">
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
		<footer class="page-footer font-small blue">
			<div class="card">
				<div class="footer-copyright text-center py-3 bg-light">
					© 2020 Copyright: <a href="#"> Thanh Binh</a>
				</div>
			</div>
		</footer>
	</main>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
</body>
</html>