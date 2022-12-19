<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login Page</title>
	<link rel="stylesheet" href="css/Login.css">
</head>
<body>
	<div class="login_header" id="center">
		<label>Login</label>
	</div>
	
	<form method="POST" action="controller">
		<div class="username_input">
			<input type="text" name="username" id="username" required><br>
			<span></span>
			<label>Username</label>
		</div>
		
		<div class="password_input">
			<input type="password" name="password" id="password" required><br>
			<span></span>
			<label>Password</label>
		</div>
		
		<div class="forgot_password">
			<a href="forgot_pass.jsp">Forgot your password?</a>
		</div>
		
		<div>
			<input type="submit" value="Login">
			<br><br>
		</div>
	</form>
</body>
</html>