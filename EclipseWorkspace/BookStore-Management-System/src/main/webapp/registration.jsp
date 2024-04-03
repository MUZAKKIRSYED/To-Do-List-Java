<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<html> 
<head> 
	<title>Bookstore</title> 
	<link rel="icon" type="image/x-icon" href="favicon.ico">
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
	display: flex; 
	align-items: center; 
	justify-content: center; 
    font-family: 'Alegreya Sans', sans-serif;
	line-height: 1.5; 
	min-height: 100vh; 
	background-image: url("https://images.unsplash.com/photo-1621947081720-86970823b77a?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
	flex-direction: column; 
	margin: 0; 
} 

.main { 
	background-color: rgba(0,0,0,0.5); 
	border-radius: 15px; 
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); 
	padding: 10px 20px; 
	transition: transform 0.2s; 
	width: 500px; 
	text-align: center; 
} 

h1,h3 { 
	color: #6351ce; 
} 

label { 
	display: block; 
	width: 100%; 
	margin-top: 10px; 
	margin-bottom: 5px; 
	text-align: left; 
	color: #888; 
	font-size: small;
} 

#pass { 
	color: red; 
	font-size: 12px; 
} 

input { 
	display: block; 
	width: 100%; 
	margin-bottom: 15px; 
	padding: 10px; 
	box-sizing: border-box; 
	border: 1px solid #ddd; 
	border-radius: 5px; 
} 

select { 
	display: block; 
	width: 100%; 
	margin-bottom: 15px; 
	padding: 10px; 
	box-sizing: border-box; 
	border: 1px solid #ddd; 
	border-radius: 5px; 
} 

button{ 
	padding: 15px; 
	border-radius: 10px; 
	margin-top: 15px; 
	margin-bottom: 15px; 
	border: none; 
	color: white; 
	cursor: pointer; 
	background-color: #0A2A6C; 
	width: 100%; 
	font-size: 16px; 
} 
.btn { 
	padding: 15px; 
	border-radius: 10px; 
	margin-top: 1px; 
	margin-bottom: 15px; 
	border: none; 
	cursor: pointer; 
	color:white;
	background-color:#0A2A6C; 
	width: 100%; 
	font-size: 16px; 
} 
.wrap { 
	display: flex; 
	justify-content: center; 
	align-items: center; 
}
	
	</style> 
</head> 

<body> 
	<div class="main"> 
		<h1>Registration</h1> 
		<% if(session.getAttribute("regtest")==null){}
		else{
		%>
			<h3><%= session.getAttribute("regtest")%></h3>
		<%
		 	}
		%>
		<form action="./regservlet" method="post"> 
			<label for="first">User Name:</label> 
			<input type="text" id="name"
				name="name"
				placeholder="Enter your name" required> 
			<label for="email">Email:</label> 
			<input type="email" id="email"
				name="email"
				placeholder="Enter your email" required> 

			<label for="password">Password:</label> 
			<input type="password" id="pass"
				name="pass"
				placeholder="Enter your password"
				pattern= 
				"^(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])\S{8,}$" required				 
				title="Password must contain at least one number, 
					one alphabet, one symbol, and be at 
					least 8 characters long">  
			<div class="wrap"> 
				<button type="submit"> 
				Submit 
				</button> 
			</div>
			<div > 
				<a href="login.jsp" class="wrap"><input class="btn" type="button" value="Login"></a> 
			</div> 
		</form> 
	</div> 
	<script src="script.js"></script> 
</body> 

</html>
