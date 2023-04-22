<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>
</head>
<style>
body {
	height:80vh;
	width:100vw;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}
</style>
<body>

	<h2>Admin Login</h2>
	<form action="login" method="post">
	<input name="adminEmail" placeholder="Enter your Email" type="email"><br><br>
	<input name="adminPassword" placeholder="Enter your Password" type="password"><br><br>
	
	<input type="submit" class="btn" value="Login">
	</form>
</body>
</html>