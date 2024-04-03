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
  	BookStore bs = new BookStore();
  	List<Book> books = bs.display();
  	for(Book b : books){
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