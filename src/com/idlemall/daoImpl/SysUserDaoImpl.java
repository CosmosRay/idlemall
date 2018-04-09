package com.idlemall.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.idlemall.dao.SysUserDao;
import com.idlemall.pojo.SysUser;
import com.idlemall.util.DBConnection;

public class SysUserDaoImpl implements SysUserDao{
	
	@Override
	public int selectSysUser(String sql,Object[] param) {
		DBConnection dbc = new DBConnection();
		Connection conn  = dbc.getConn();
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			//预编译sql语句
			pst = conn.prepareStatement(sql);
			for(int i = 0; i<param.length;i++){
				pst.setObject(i+1, param[i]);
			}
			
			rs = pst.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			while(rs.next()){
				return 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
