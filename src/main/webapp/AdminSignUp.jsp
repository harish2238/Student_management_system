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
	<form action="signUp" method="post">
	<h2>Admin SignUp</h2>
	<input name="AdminName" placeholder="Enter Name:" type="text"><br><br>
	<input name="AdminEmail" placeholder="Enter Email:" type="email"><br><br>
	<input name="AdminPassword" placeholder="Enter password" type="password"><br><br>
	<input type="submit" class="btn" value="SignUp">
	
	</form>
</body>
</html>