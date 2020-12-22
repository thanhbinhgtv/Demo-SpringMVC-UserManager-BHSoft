<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Home</title>
	<!-- Main css -->
	<link rel="stylesheet" href='<c:url  value="/resources/css/bootstrap.min.css" />'>
	<style type="text/css">
		article {
			position: relative; right: 60px;
		}
	</style>
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
					<li class="nav-item active"><a class="nav-link" href="home"><i class="fa fa-home"></i>
						 Home<span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
				</ul>
				<ul class="navbar-nav">
					<li class="nav-item"><a  style="margin-left : 600px ;color: red;"><b>Hello : ${username}</b></a></li>
				</ul>
			</div>
		</nav>
		<!------------------------------------   ------------------------------------------>
		<article class="col">
			<div align="center">
				<h1>List Users</h1>
				<a href="new-user">Create New User</a> <br>
				<table border="1" cellpadding="8">
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
								<td>${list.getPassWord()}</td>
								<td>${list.getEmail()}</td>
								<td>${list.getFullName()}</td>
								<td>${list.getYearOld()}</td>
								<td>${list.getAddress()}</td>
								<td>${list.getHobbies()}</td>
								<td>${list.getSex()}</td>
								<td>${list.getLevel()}</td>
								<td><a href="update-user/${list.getId()}" onclick="return confirm('Bạn muốn sửa?')" />Edit</a></td>
								<td><a href="delete/${list.getId()}" onclick="return confirm('Bạn chắc chắn muốn xóa?')" />Delete</a></td>
								<td><a href="view/${list.getId()}" />View</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</article>
		<br>
		<!------------------------------------   ------------------------------------------>
		<footer class="page-footer font-small blue">
		 	<div class="card">
				<div class="footer-copyright text-center py-3 bg-light">© 2020 Copyright:
			    	<a href="#"> Thanh Binh</a>
			 	 </div>
			</div>
		</footer>
	</main>
</body>
</html>