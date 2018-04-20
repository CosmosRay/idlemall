package com.idlemall.cosmos.dao.system;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.stereotype.Repository;

import com.idlemall.cosmos.model.SysUser;
import com.idlemall.cosmos.util.DBConnection;

@Repository
public class SysUserDaoImpl implements SysUserDao{

	@Override
	public SysUser selectSysUser(Object[] param, String sql) {
		DBConnection dbc = new DBConnection();
		Connection conn  =  dbc.getConn();
		PreparedStatement pst = null;
		ResultSet rs = null;
		SysUser usr= new SysUser();
		
		try {
			//预编译sql语句
			pst = conn.prepareStatement(sql);
			for(int i = 0; i<param.length;i++){
				pst.setObject(i+1, param[i]);
			}
			System.out.println("输出SQL语句 ： "+sql);
			rs = pst.executeQuery();
			if(rs.next()){
				usr.setUser_id(rs.getInt("user_id"));
				usr.setUser_name(rs.getString("user_name"));
				usr.setFaculty_sort_id(rs.getInt("faculty_sort_id"));
				usr.setUser_address(rs.getString("user_address"));
				usr.setUser_gender(rs.getInt("user_gender"));
				usr.setUser_class(rs.getString("user_class"));
				usr.setUser_credit(rs.getInt("user_credit"));
				usr.setUser_phone(rs.getString("user_phone"));
				usr.setUser_qq(rs.getString("user_qq"));
				usr.setUser_buy(rs.getInt("user_buy"));
				usr.setUser_sale(rs.getInt("user_sale"));
				usr.setUser_time(rs.getString("user_time"));
				usr.setUser_attr1(rs.getString("user_attr1"));
				usr.setUser_attr2(rs.getString("user_attr2"));
				usr.setUser_attr3(rs.getString("user_attr3"));
				System.out.println("usr ==&*********"+usr);
			}else{
				dbc.closeConn(rs, pst, conn);
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			dbc.closeConn(rs, pst, conn);
		}
		return usr;
	}

	@Override
	public int saveSysUser(Object[] param, String sql) {
		DBConnection dbc = new DBConnection();
		Connection conn  =  dbc.getConn();
		PreparedStatement pst = null;
		int k = 0;
		try {
			//预编译sql语句
			pst = conn.prepareStatement(sql);
			for(int i = 0; i<param.length;i++){
				pst.setObject(i+1, param[i]);
			}
			System.out.println("输出SQL语句 ： "+sql);
			k = pst.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			dbc.closeConn(pst, conn);
		}
		return k;
	}

	

}
