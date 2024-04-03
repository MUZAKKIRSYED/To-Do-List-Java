package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bo.BookStore;
import com.model.Book;

@WebServlet("/searchaController")
public class searchaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public searchaController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		List<Book> ba = null;
		String name = request.getParameter("name");
		HttpSession hs = request.getSession();
		BookStore bs = new BookStore();
	  	try {
			ba = bs.searcha(name);
			if(ba.isEmpty()) {
				response.sendRedirect("error.jsp");
				throw new AuthorNotFoundException("AuthorNotFoundException : "+name);
			}
			else {
				hs.setAttribute("abook", ba);
				response.sendRedirect("searcha.jsp");
			}
		} catch (AuthorNotFoundException e) {
			hs.setAttribute("booke",e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
class AuthorNotFoundException extends Exception {
	public AuthorNotFoundException(String str) {
		super(str);
	}
}

