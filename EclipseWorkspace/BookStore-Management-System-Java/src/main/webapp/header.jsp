<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width,inital-scale=1.0">
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Alegreya+Sans:ital,wght@0,100;0,300;0,400;0,500;0,700;0,800;0,900;1,100;1,300;1,400;1,500;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
body{
  font-family: "Alegreya Sans", sans-serif;
  font-weight: 300;
  font-style: normal;
  width:100%;
  overflow-x:hidden;
}
#dropdownlist{
	background-color: black; 
	color:white;
	border:1px solid white;
}
#dropdownlist:hover{
	background-color: #6351ce; 
	color:white;
	border:1px solid white;
}
#hamburger{
	border:1px solid #6351ce;
	width:20px;
	height:4px;
	margin-bottom:4px;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg fixed-top" style="background-color: black;border-bottom:1px solid #6351ce;">
  <a class="navbar-brand" style="color: #6351ce">BookStore Management System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <div id="hamburger"></div>
    <div id="hamburger"></div>
    <div id="hamburger"></div>
  </button>
  <div class="collapse navbar-collapse text-white" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link text-white" href="index.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="#foo">About</a>
      </li>
      <li class="nav-item dropdown" >
        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdownMenuLink"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          More Options
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="background-color: black">
          <a class="dropdown-item" id="dropdownlist" href="addbook.jsp">Add a Book</a>
          <a class="dropdown-item" id="dropdownlist" href="updatebook.jsp">Update a Book</a>
          <a class="dropdown-item" id="dropdownlist" href="search.jsp">Search for a Book</a>
          <a class="dropdown-item" id="dropdownlist" href="display.jsp">Display Books</a>
          <a class="dropdown-item" id="dropdownlist" href="delete.jsp">Delete a Book</a>
          <a class="dropdown-item" id="dropdownlist" href="exit.jsp">Exit</a>
        </div>
      </li>
    </ul>
  </div>
</nav>