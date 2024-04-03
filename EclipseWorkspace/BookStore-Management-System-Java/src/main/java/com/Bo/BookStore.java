package com.Bo;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.model.Book;
public class BookStore {
	public static final String url = "jdbc:mysql://localhost:3306/bookstore";
	public static final String username = "root";
	public static final String password = "root";
	List<Book> books = new ArrayList<Book>();
	List<Book> abooks = new ArrayList<Book>();
	List<Book> tbooks = new ArrayList<Book>();
	public boolean add(Book book) throws ClassNotFoundException, SQLException {
		boolean b = false;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement ps = con.prepareStatement("insert into books values(?,?,?,?,?)");
		ps.setInt(1,book.getBookId());
		ps.setString(2,book.getTitle());
		ps.setString(3,book.getAuthor());
		ps.setFloat(4,book.getPrice());
		ps.setInt(5,book.getQuantity());
		b = ps.execute();
		return b;
		
	}
	public boolean update(Book book) throws ClassNotFoundException, SQLException {
		boolean b = false;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement ps = con.prepareStatement("update books set title=? , author=? , price=? , quantity=? where BookId=?");
		ps.setString(1, book.getTitle());
		ps.setString(2, book.getAuthor());
		ps.setFloat(3,book.getPrice());
		ps.setInt(4,book.getQuantity());
		ps.setInt(5,book.getBookId());
		b = ps.execute();
		return b;
	}
	public Book search(int id) throws Exception {
		display();
		for(Book b : books) {
			if(id==b.getBookId()) {
				return b;
			}
		}
		return null;
	}
	public List<Book> searcha(String author) throws Exception {
		display();
		for(Book b : books) {
			if(author.equalsIgnoreCase(b.getAuthor())) {
				abooks.add(b);
			}
		}
		if(abooks==null) {
			return null;
		}
		return abooks;
	}
	public List<Book> searcht(String title) throws Exception {
		display();
		for(Book b : books) {
			if(title.equalsIgnoreCase(b.getTitle())) {
				tbooks.add(b);
			}
		}
		if(tbooks==null) {
			return null;
		}
		return tbooks;
	}
	public boolean delete(int id) throws SQLException, ClassNotFoundException {
		boolean b = false;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement ps = con.prepareStatement("delete from books where bookId=?");
		ps.setInt(1, id);
		b = ps.execute();
		return b;
	}
	public List<Book> display() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		String q = "select * from books";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(q);
		while(rs.next()) {
			books.add(new Book(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getFloat(4),rs.getInt(5)));
		}
		return books;
	}
}
