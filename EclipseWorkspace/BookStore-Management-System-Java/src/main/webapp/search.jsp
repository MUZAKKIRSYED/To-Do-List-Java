<%@ include file="header.jsp" %>
<%@ page import="com.model.Book" %>
<%@ page import="com.Bo.BookStore" %>
<%@ page import="java.util.*" %>
<style>
tr:nth-child(even):hover{background-color: #6351ce;border:1px solid white;}
tr:nth-child(odd):hover{background-color: #6351ce;border:1px solid white;}
tr:nth-child(even){
	border:1px solid #6351ce;
	background-color:black;
	color:white;
}
tr:nth-child(odd){
	border:1px solid #6351ce;
	background-color:#110f0f;
	color:white;
}
</style>
<div style="background-color: black;color:white;width:100%;text-align:center;">
<form style="padding-top:100px;justify-content:center;" action="./searchController" method="post">
<label for="id"><b><strong style="color:#6351ce" class="p-2">Enter Book Id  : </strong></b></label><input type="number" min=1 id="id" name="id" style="height:35px;" required>
<input type="submit" value="Search" class="btn btn-outline-dark m-2" style="color:white;">
</form>
<a href="searcha.jsp"><input type="button" value="Search By Author Name" class="btn btn-outline-dark m-2" style="color:white;"></a>
<a href="searcht.jsp"><input type="button" value="Search By Title" class="btn btn-outline-dark m-2" style="color:white;"></a>
</div>
<div style="padding-top:100px;justify-content:center;padding-bottom:50px;background-color:black;">
<table class="table m-auto" style="max-width: 90%;">
  <thead>
    <tr style="border:1px solid #6351ce;background-color:black;color:#6351ce">
      <th scope="col" style="border:1px solid #6351ce">BOOK ID</th>
      <th scope="col" style="border:1px solid #6351ce">TITLE</th>
      <th scope="col" style="border:1px solid #6351ce">AUTHOR</th>
      <th scope="col" style="border:1px solid #6351ce">PRICE</th>
      <th scope="col" style="border:1px solid #6351ce">QUANTITY</th>
    </tr>
  </thead>
  <tbody>
  <%
  if(session.getAttribute("book")==null){}
  else{
	  Book b = (Book)session.getAttribute("book");
  %>
    <tr style="border:1px solid #6351ce">
      <td style="border:1px solid #6351ce"><%=b.getBookId() %></td>
      <td style="border:1px solid #6351ce"><%=b.getTitle() %></td>
      <td style="border:1px solid #6351ce"><%=b.getAuthor() %></td>
      <td style="border:1px solid #6351ce"><%=b.getPrice() %></td>
      <td style="border:1px solid #6351ce"><%=b.getQuantity() %></td>
    </tr>
  <%} %>
  </tbody>
</table></div>
<%@ include file="footer.jsp" %>