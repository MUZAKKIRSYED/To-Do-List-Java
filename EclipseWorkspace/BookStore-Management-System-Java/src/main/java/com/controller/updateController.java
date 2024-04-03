package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bo.BookStore;
import com.model.Book;

@WebServlet("/updateController")
public class updateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public updateController() {
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
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String pricee = request.getParameter("price");
		float price = Float.valueOf(pricee);
		String quantityy = request.getParameter("quantity");
		int quantity = Integer.valueOf(quantityy);
		HttpSession hs =  request.getSession();
		BookStore bs = new BookStore();
		try {
			b = bs.update(new Book(id,title,author,price,quantity));
		} catch (Exception e) {}
		if(b==false) {
			hs.setAttribute("updatetest","Book Updated Successfully");
			response.sendRedirect("updatebook.jsp");
		}
		else {
			hs.setAttribute("updatetest","Book Not Found In Database");
			response.sendRedirect("updatebook.jsp");
		}
	}

}
