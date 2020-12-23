<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
	<!-- Main css -->
	<link rel="stylesheet" href='<c:url  value="/resources/css/style.css" />'>
</head>
<body>
	<div class="main">
		<section class="signup">
			<!-- <img src="images/signup-bg.jpg" alt=""> -->
			<div class="container">
				<div class="signup-content">
					<form action="checkRegister" method="POST" id="signup-form" class="signup-form">
						<h2 class="form-title">Register</h2>
						<div class="form-group">
							<input type="text" class="form-input" name="username" placeholder="User Name" required="required" maxlength="30"/>
						</div>
						<div class="form-group">
							<input type="email" class="form-input" name="email" placeholder="Your Email" required="required" maxlength="40"/>
						</div>
						<div class="form-group">
							<input type="password" class="form-input" name="password" placeholder="Password" required="required" maxlength="30"/>
						</div>
						<div class="form-group">
							<input type="password" class="form-input" name="repassword"
								id="re_password" placeholder="Repeat password" maxlength="30"/>
						</div>
						<div class="form-group">
							<input type="checkbox" name="agree-term" id="agree-term"
								class="agree-term" /> <label for="agree-term"
								class="label-agree-term"><span><span></span></span>I agree all statements in <a href="#" class="term-service">Terms of service</a></label>
						</div>
						<div class="form-group">
							<input type="submit" name="submit" id="submit"
								class="form-submit" value="Sign up" onclick="return confirm('Tạo tài khoản')" />
						</div>						
					</form>
					<p class="loginhere-link" style="color: red;">${error}</p>
					<p class="loginhere">
						Have already an account ? <a href=${pageContext.request.contextPath}/ class="loginhere-link">Login Here</a>
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