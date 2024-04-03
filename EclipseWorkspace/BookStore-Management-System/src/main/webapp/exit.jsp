<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport"
	content="width=device-width,inital-scale=1.0">
<link rel="stylesheet" href="index.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya+Sans:ital,wght@0,100;0,300;0,400;0,500;0,700;0,800;0,900;1,100;1,300;1,400;1,500;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="icon" type="image/x-icon" href="favicon.ico">
<title>Bookstore</title>
<script>
	function preventBack() {
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload = function() {
		null
	};
</script>
<style>
body {
	font-family: "Alegreya Sans", sans-serif;
	font-weight: 300;
	font-style: normal;
	width: 100%;
	overflow-x: hidden;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg fixed-top"
		style="background-color: black; border-bottom: 1px solid #6351ce;">
		<a class="navbar-brand" style="color: #6351ce">BookStore
			Management System</a>
	</nav>
	<div id="hero">
		<p>
		<h4 style="color: white;">
			Thank you for choosing our Bookstore Management System application!<br>
			<br> Your support means the world to us. We're committed to
			continually improving your experience and providing you with the best
			service possible. If you have any feedback or suggestions, we'd love
			to hear from you. Happy reading, and thank you for being part of our
			community!
		</h4>
		<br> <br>
		<form action="mailto:somerandomperson@gmail.com" method="post"
			enctype="text/plain" style="padding: 10px 0px; color: #6351ce;">
			<b>Name:</b><br> <input type="text" name="name" required><br>
			<b>E-mail:</b><br> <input type="text" name="mail" required><br>
			<b>Comment:</b><br>
			<textarea rows="4" cols="50" required></textarea>
			<br> <br> <input type="submit" value="Send"
				class="btn btn-outline-primary p-2 m-1"> <input
				type="reset" value="Reset" class="btn btn-outline-danger p-2 m-1">
			<a href="login.jsp"><input type="button" value="Login"
				class="btn btn-outline-success p-2 m-1"></a>
		</form>
	</div>
	<%
	session.invalidate();
	%>