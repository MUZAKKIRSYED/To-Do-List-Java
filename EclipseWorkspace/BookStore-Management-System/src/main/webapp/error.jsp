<%@ include file="header.jsp" %>
<div style="padding-top:100px;width:100%;height:100%;background-color: black;color:#6351ce;text-align:center;">
<h1 style="margin:auto;padding-bottom:50px;"><%= session.getAttribute("booke") %></h1>
<a href="search.jsp"><input type="button" value="Search By Book Id" class="btn btn-outline-dark m-2" style="color:white;"></a>
<a href="searcha.jsp"><input type="button" value="Search By Author Name" class="btn btn-outline-dark m-2" style="color:white;"></a>
<a href="searcht.jsp"><input type="button" value="Search By Title" class="btn btn-outline-dark m-2" style="color:white;"></a><br><br>
</div>
<%@ include file="footer.jsp" %>