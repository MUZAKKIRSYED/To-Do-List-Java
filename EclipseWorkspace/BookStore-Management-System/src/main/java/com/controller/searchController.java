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

@WebServlet("/searchController")
public class searchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public searchController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		Book b = null;
		String str = request.getParameter("id");
		int id = Integer.parseInt(str);
		HttpSession hs = request.getSession();
		BookStore bs = new BookStore();
	  	try {
			b = bs.search(id);
			if(b==null) {
				response.sendRedirect("error.jsp");
				throw new InvalidBookIdException("InvalidBookIdException : "+id);
			}
			else {
				hs.setAttribute("book", b);
				response.sendRedirect("search.jsp");
			}
		} catch (InvalidBookIdException e) {
			hs.setAttribute("booke",e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
class InvalidBookIdException extends Exception {
	public InvalidBookIdException(String str) {
		super(str);
	}

}

