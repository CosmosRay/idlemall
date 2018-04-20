package com.idlemall.cosmos.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DBConnection {
	
	/**传统连接数据库方法
	 * @return conn
	 * 连接数据库并且返回连接值
	 */
	public Connection getConn() {
		Connection conn =null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/idlemall","root","root");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	/**
	 *  关闭数据库连接
	 * @param rs
	 * @param pst
	 * @param conn
	 */
	public void closeConn(ResultSet rs,PreparedStatement pst,Connection conn){
		try {
			rs.close();
			pst.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void closeConn(PreparedStatement pst,Connection conn){
		try {
			pst.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
