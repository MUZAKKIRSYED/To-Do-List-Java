package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bo.BookStore;
import com.model.Book;

@WebServlet("/addController")
public class addController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public addController() {
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
			b = bs.add(new Book(id,title,author,price,quantity));
		} catch (Exception e) {}
		if(b==false) {
			hs.setAttribute("addtest","Book Inserted Successfully");
			response.sendRedirect("addbook.jsp");
		}
		else {
			hs.setAttribute("addtest","Duplicate Book Found In Database");
			response.sendRedirect("addbook.jsp");
		}
	}

}
