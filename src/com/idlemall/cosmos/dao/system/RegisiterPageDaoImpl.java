package com.idlemall.cosmos.dao.system;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.idlemall.cosmos.util.DBConnection;

public class RegisiterPageDaoImpl implements RegisiterPageDao {

	@Override
	public String addSysUser(Object[] param,String sql) {
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
		if(k==1){
			return "success";
		}
		return "defeated";
	}

	@Override
	public String saveSysUser(Object[] param,String sql) {
		// TODO Auto-generated method stub
		return null;
	}

}
