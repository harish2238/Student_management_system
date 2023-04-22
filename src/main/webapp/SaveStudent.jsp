<%@page import="student_dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>
</head>
<body>
	<%Admin admin=(Admin) session.getAttribute("admin");
		if(admin!=null){
	%>
	<form action="save" method="post">
	<input name="studentName" placeholder="Enter Student Name:"
	type="text"><br><br>
	<input name="studentPhoneNumber" placeholder="Enter Student Phone Number"
	type="text"><br><br>
	<input name="studentEmail" placeholder="Enter Student email"
	type="email"><br><br>
	<input type="submit" value="Save">
	</form>
	<%}else{
		response.sendRedirect("AdminLogin.jsp");
	}%>
</body>
</html>