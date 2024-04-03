<%@ include file="header.jsp"%>
<%@ page import="com.model.Book"%>
<%@ page import="com.Bo.BookStore"%>
<%@ page import="java.util.*"%>
<style>
tr:nth-child(even):hover {
	background-color: #6351ce;
	border: 1px solid white;
}

tr:nth-child(odd):hover {
	background-color: #6351ce;
	border: 1px solid white;
}

tr:nth-child(even) {
	border: 1px solid #6351ce;
	background-color: black;
	color: white;
}

tr:nth-child(odd) {
	border: 1px solid #6351ce;
	background-color: #110f0f;
	color: white;
}
</style>
<div
	style="background-color: black; color: white; width: 100%; text-align: left;">
	<form style="padding-top: 100px; text-align: left; margin-left: 100px;"
		action="./addController" method="post">
		<h4 style="color: white;">ADD A NEW BOOK</h4><br>
		<label for="id" style="width: 100px;"><b><strong
				style="color: white;" class="p-2">Book Id : </strong></b></label><input
			type="number" min=1 id="id" name="id" style="height: 35px;border:3px solid #6351ce" required><br>
		<br> <label for="title" style="width: 100px;"><b><strong
				style="color: white;" class="p-3">Title : </strong></b></label><input
			type="text" id="title" name="title" style="height: 35px;border:3px solid #6351ce" required><br>
		<br> <label for="author" style="width: 100px;"><b><strong
				style="color: white;" class="p-2">Author : </strong></b></label><input
			type="text" id="author" name="author" style="height: 35px;border:3px solid #6351ce" required><br>
		<br> <label for="price" style="width: 100px;"><b><strong
				style="color: white;" class="p-2">Price : </strong></b></label><input
			type="number" min=1 id="price" name="price" step="0.01" style="height: 35px;border:3px solid #6351ce"
			required><br>
		<br> <label for="quantity" style="width: 100px;"><b><strong
				style="color: white;" class="p-2">Quantity : </strong></b></label><input
			type="number" min=1 id="quantity" name="quantity"
			style="height: 35px;border:3px solid #6351ce" required><br>
		<br> <input type="submit" value="Submit"
			class="btn btn-outline-dark m-2" style="color: white;border:2px solid #6351ce;"><br><br>
	</form>
	<%
	if(session.getAttribute("addtest")==null){}
	else{
	%>
		<h5 class="p-4" style="background-color: black; color: white; width: 100%; text-align: center;margin-bottom:0px;padding-bottom:0px;"><%= session.getAttribute("addtest") %></h5>
	<% 
	}
	session.invalidate();
	%>
</div>

<%@ include file="footer.jsp"%>