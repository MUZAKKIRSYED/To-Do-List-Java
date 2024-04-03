package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bo.TaskBo;
import com.model.Task;

@WebServlet("/addservlet")
public class addservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public addservlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String id = request.getParameter("id");
		String desc = request.getParameter("desc");
		HttpSession hs = request.getSession();
		TaskBo tb = new TaskBo();
		boolean b = true;
		try {
			b = tb.add(new Task(id,desc));
		} catch (Exception e) {}
		if(b==false) {
			hs.setAttribute("addtest","Added Successfully");
			response.sendRedirect("welcome.jsp");
		}
		else {
			hs.setAttribute("addtest","Error Occured during Task Creation");
			response.sendRedirect("welcome.jsp");
		}
	}

}
