package com.bo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.model.Task;

public class TaskBo {
	public static final String url = "jdbc:mysql://localhost:3306/todolist";
	public static final String username = "root";
	public static final String password = "User@123";
	public boolean add(Task t) throws SQLException, ClassNotFoundException {
		boolean b = false;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement ps = con.prepareStatement("insert into tasks values(?,?)");
		ps.setString(1,t.getid());
		ps.setString(2,t.getDesc());
		b = ps.execute();
		con.close();
		return b;
	}
	public List<Task> showTasks() throws ClassNotFoundException, SQLException {
		List<Task> task = new ArrayList<Task>();
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from tasks order by id");
		while(rs.next()) {
			task.add(new Task(rs.getString(1),rs.getString(2)));
		}
		con.close();
		return task;	
	}
	public boolean deleteTasks(int id) throws ClassNotFoundException, SQLException {
		boolean b = false;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement ps = con.prepareStatement("delete from tasks where id = ?");
		ps.setInt(1,id);
		b = ps.execute();
		con.close();
		return b;
	}
}
