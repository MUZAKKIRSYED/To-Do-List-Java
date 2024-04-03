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
<form style="padding-top:100px;justify-content:center;" action="./searchtController" method="post">
<label for="id"><b><strong style="color:#6351ce" class="p-2">Enter Title  : </strong></b></label><input type="text" id="name" name="name" style="height:35px;" required>
<input type="submit" value="Search" class="btn btn-outline-dark m-2" style="color:white;">
</form>
<a href="search.jsp"><input type="button" value="Search By Book Id" class="btn btn-outline-dark m-2" style="color:white;"></a>
<a href="searcha.jsp"><input type="button" value="Search By Author Name" class="btn btn-outline-dark m-2" style="color:white;"></a>
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
  if(session.getAttribute("abook")==null){}
  else{
	  List<Book> b = (List<Book>) session.getAttribute("abook");
	  for(Book bb : b){
  %>
    <tr style="border:1px solid #6351ce">
      <td style="border:1px solid #6351ce"><%=bb.getBookId() %></td>
      <td style="border:1px solid #6351ce"><%=bb.getTitle() %></td>
      <td style="border:1px solid #6351ce"><%=bb.getAuthor() %></td>
      <td style="border:1px solid #6351ce"><%=bb.getPrice() %></td>
      <td style="border:1px solid #6351ce"><%=bb.getQuantity() %></td>
    </tr>
  <%}} %>
  </tbody>
</table></div>
<%@ include file="footer.jsp" %>