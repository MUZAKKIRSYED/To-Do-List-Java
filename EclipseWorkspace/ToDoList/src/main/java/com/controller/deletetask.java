package com.controller;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bo.TaskBo;

@WebServlet("/deletetask")
public class deletetask extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public deletetask() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		boolean b = true;
		int id = Integer.parseInt(request.getParameter("hvalue"));
		TaskBo tb = new TaskBo();
		try {
			b = tb.deleteTasks(id);
		} catch (Exception e) {}
		if(b==false) {
			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {}
			response.sendRedirect("welcome.jsp");
		}
		else {
			response.sendRedirect("welcome.jsp");
		}
	}

}
