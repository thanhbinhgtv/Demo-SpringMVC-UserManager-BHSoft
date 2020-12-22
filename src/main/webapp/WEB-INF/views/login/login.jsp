<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
	<!-- Font Icon -->
	<link rel="stylesheet" href='<c:url  value="/resources/css/material-design-iconic-font.min.css" />'>
	<!-- Main css -->
	<link rel="stylesheet" href='<c:url  value="/resources/css/style.css" />'>
</head>
<body>
	<div class="main">
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<form action="checkLogin" method="POST" id="signup-form" class="signup-form">
						<h2 class="form-title">Login</h2>
						<div class="form-group">
							<input type="text" class="form-input" name="username" placeholder="User Name" />
						</div>
						<div class="form-group">
							<input type="password" class="form-input" name="password" placeholder="Password" /> 
						</div>
						<div class="form-group">
							<input type="checkbox" name="agree-term" id="agree-term"
								class="agree-term" /> <label for="agree-term"
								class="label-agree-term"><span><span></span></span>Remember password</label>
						</div>
						<div class="form-group">
							<input type="submit" name="submit" id="submit"
								class="form-submit" value="Login" />
						</div>
					</form>
					<a class="loginhere-link" style="color: red;">${error}</a>
					<p class="loginhere">
						No have account ? <a href="register" class="loginhere-link">Register here</a>
					</p>
				</div>
			</div>
		</section>
	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>