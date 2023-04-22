<%@page import="student_dto.Admin"%>
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
	a{
	padding:.5em 1em;
	font-size: 1.3rem;
	border:2px solid #565656;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	margin: .5rem;
}
	h1{
font-size: 7rem;
color: #565656;
}
	</style>
<body>
	<%Admin admin=(Admin) session.getAttribute("admin");
		if(admin!=null){
	%>
	<h2>Welcome Admin</h2>
	<h3>U can manage Student Data here!!</h3>
	<div>
	<a href="SaveStudent.jsp">Save_Student</a>
	<a href="viewStudents">View_Students</a>
	</div>
	<%}else{
		response.sendRedirect("AdminLogin.jsp");
		}%>
		<br><br>
		<div class="logout"><a href="logout">logout</a></div>
</body>
</html>