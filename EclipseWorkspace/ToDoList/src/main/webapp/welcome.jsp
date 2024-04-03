<%@ include file="header.jsp"%>
<%@ page import="com.model.Task" %>
<%@ page import="com.bo.TaskBo" %>
<%@ page import="java.util.*" %>
<div id="add">
<form action="./addservlet" method="post" style="padding-top:40px ">
			<label for="id" style="font-size: small">
				Priority: 
			</label>
			<input type="number"
				id="id"
				name="id" min=1 max=99
				style=" border-radius: 2px; border:3px solid white; max-width:10%"
				placeholder="" required>
			<label for="desc" style="font-size: small">
				Description: 
			</label>
			<input type="text"
				id="desc"
				name="desc"
				style="border-radius: 2px; border:3px solid white; "
				required>
				<button type="submit" class="btn btn-sm btn-outline-light float-end">
					<strong class="p-2">+</strong>
				</button>
		</form>
</div>

<% 
TaskBo tb = new TaskBo();
List<Task> tasks = tb.showTasks();
for(Task uu : tasks){
%>
<div class="danger" id="td<%=uu.getid()%>">
		<span><Strong><%=uu.getid() %>:</Strong></span> <span><%=uu.getDesc() %></span>
		<form action="./deletetask" method="post"><input type="number" style="display:none;" name="hvalue" id="hvalue" value="<%=uu.getid()%>"><input type="submit" value="Done" class="btn btn-outline-success float-end btn-sm m-1 mt-4" id="d<%=uu.getid()%>" onclick="deleted(<%=uu.getid()%>)"></form>
		<input type="button" value="Start" class="btn btn-outline-danger float-end btn-sm m-4" id="s<%=uu.getid()%>" onclick="change(<%=uu.getid()%>)">	
</div>
<% }%>
<script>
	
</script>
<%@ include file="footer.jsp"%>