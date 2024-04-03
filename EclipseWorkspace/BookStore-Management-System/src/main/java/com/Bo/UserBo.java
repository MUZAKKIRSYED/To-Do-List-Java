package com.Bo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Users;

public class UserBo {
	public static final String url = "jdbc:mysql://localhost:3306/bookstore";
	public static final String username = "root";
	public static final String password = "User@123";
	public boolean addUser(Users u) throws SQLException, ClassNotFoundException {
		boolean b = false;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?)");
		ps.setString(1,u.getName());
		ps.setString(2,u.getEmail());
		ps.setString(3,u.getPassword());
		b = ps.execute();
		con.close();
		return b;
	}
	public List<Users> searchUser() throws ClassNotFoundException, SQLException {
		List<Users> user = new ArrayList<Users>();
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from users");
		while(rs.next()) {
			user.add(new Users(rs.getString(1),rs.getString(2),rs.getString(3)));
		}
		con.close();
		return user;	
	}
}
