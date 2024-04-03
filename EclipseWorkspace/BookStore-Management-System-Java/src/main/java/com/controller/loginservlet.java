package com.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bo.UserBo;
import com.model.Users;

@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public loginservlet() {
    	super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String email = request.getParameter("email");
		String password =  request.getParameter("password");
		UserBo ub = new UserBo();
		List<Users> users = null;
		boolean res = false;
		String name = null;
		HttpSession hs = request.getSession();
		try {
			users =  ub.searchUser();
		} catch (Exception e) {System.out.println("err");}
		for(Users uu : users) {
			if(uu.getEmail().equals(email) && uu.getPassword().equals(password)) {
				name = uu.getName();
				res = true;
			}
		}
		if(res==true) {
			hs.setAttribute("logintest",name);
			response.sendRedirect("index.jsp");
		}
		else{
			hs.setAttribute("logintest","Wrong Credentials");
			response.sendRedirect("login.jsp");
		}
		
	}
} 
