<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="Login.css">
</head>
<body>
	<div class="login_header">
		<label>Login</label>
	</div>
	<div id="center">
		<form method="POST" action="controller">
			<div class="username_input">
				<input type="text" name="username" id="username" required><br>
				<span></span>
				<label>Username</label>
			</div>
			<div class="password_input">
				<input type="text" name="password" id="password" required><br>
				<span></span>
				<label>Password</label>
			</div>
			<div class="forgot_password">
				<a href="forgotpassword.jsp">Forgot your password?</a>
			</div>
			
			<input type="submit" value="Login">
			<br><br>
		</form>
	</div>
	
</body>
</html>