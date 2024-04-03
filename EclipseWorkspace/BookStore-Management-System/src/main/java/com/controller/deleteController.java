package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.Bo.BookStore;

@WebServlet("/deleteController")
public class deleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public deleteController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		boolean b = true;
		String idd = request.getParameter("id");
		int id = Integer.valueOf(idd);
		HttpSession hs =  request.getSession();
		BookStore bs = new BookStore();
		try {
			b = bs.delete(id);
		} catch (Exception e) {}
		if(b==false) {
			hs.setAttribute("deletetest","Book Deleted Successfully");
			response.sendRedirect("delete.jsp");
		}
		else {
			hs.setAttribute("deletetest","Book Not Found In Database");
			response.sendRedirect("delete.jsp");
		}
	}

}
