<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<head>
<meta charset="utf-8">
<title>Logout</title>
<meta name="description" content="">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width">
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
	font-family: 'Alegreya Sans', sans-serif;
	color: white;
	height: 97%;
	width: 97%;
	position: relative;
	background-image:
		url("https://images.unsplash.com/photo-1621947081720-86970823b77a?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
}

.main {
	background-color: rgba(0, 0, 0, 0.5);
	border-radius: 15px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
	padding: 10px 20px;
	transition: transform 0.2s;
	width: 500px;
	text-align: center;
	color: white;
	position: absolute;
	left: 30%;
	top: 30%;
}

h1 {
	color: #4CAF50;
}
</style>
</head>
<body id="lbody">
	<div class="background-photo">
		<div class="jumbotron">
			<div class="main">
				<%
				session.invalidate();
				%>
				<h1>Logged out !</h1>
				<a href="index.jsp"><button class="btn btn-outline-success m-3">Login</button></a>
			</div>
		</div>
	</div>
	
</body>

</html>