package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bo.UserBo;
import com.model.Users;

@WebServlet("/regservlet")
public class regservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public regservlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		boolean b = true;
		HttpSession hs = request.getSession();
		UserBo ub = new UserBo();
		try {
			b = ub.addUser(new Users(name,email,pass));
		}
		catch (Exception e) {}
		if(b==false) {
			hs.setAttribute("regtest","User Registered Successfully Kindly Login");
			response.sendRedirect("registration.jsp");
		}
		else {
			hs.setAttribute("regtest","User Already Registered Kindly Login");
			response.sendRedirect("registration.jsp");
		}
	}

}
