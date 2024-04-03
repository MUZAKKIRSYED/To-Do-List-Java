<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>TODO-LIST</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
	<link href="mycss.css" rel="stylesheet">
	<link href="welcome.css" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="favicon.ico">
</head>
<body  style="background-color: #212529">

	<nav class="navbar navbar-inverse bg-dark text-white fixed-top mb-4" style="border-bottom:1px solid white">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="welcome.jsp"><button type="button" class="btn btn-outline-light">ToDoList</button></a>
			</div>
			<div class="navbar-header float-end">
				<button class="btn btn-dark disabled">HELLO <%= session.getAttribute("logintest") %></button>
			</div>
			<div class="navbar-header float-end">
				<a href="logout.jsp"><button type="submit" class="btn btn-outline-light">Logout</button></a>
			</div>
		</div>
	</nav>
	<script>
	function preventBack() {
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload = function() {
		null
	};
	</script>
	