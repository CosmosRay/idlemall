package com.idlemall.cosmos.dao.system;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.idlemall.cosmos.model.UserGoods;
import com.idlemall.cosmos.util.DBConnection;

@Repository
public class UserGoodsDaoImpl implements UserGoodsDao {

	@Override
	public List<UserGoods> selectGoodById(Object[] param,String sql) {
		System.out.println("通过商品ID查询商品信息");
		DBConnection dbc = new DBConnection();
		Connection conn  =  dbc.getConn();
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<UserGoods> list = new ArrayList<UserGoods>();
		
		try {
			//预编译sql语句
			pst = conn.prepareStatement(sql);
			for(int i = 0; i<param.length;i++){
				pst.setObject(i+1, param[i]);
			}
			System.out.println("输出SQL语句 ： "+sql);
			rs = pst.executeQuery();
			while(rs.next()){
				UserGoods usrGood= new UserGoods();
				usrGood.setGoods_id(rs.getInt("goods_id"));
				usrGood.setUser_id(rs.getInt("user_id"));
				usrGood.setGoods_name(rs.getString("goods_name"));
				usrGood.setGoods_image(rs.getString("goods_image"));
				usrGood.setGoods_sort_id(rs.getInt("goods_sort_id"));
				usrGood.setFaculty_sort_id(rs.getInt("faculty_sort_id"));
				usrGood.setGoods_desc(rs.getString("goods_desc"));
				usrGood.setGoods_price(rs.getDouble("goods_price"));
				usrGood.setGoods_state(rs.getInt("goods_state"));
				usrGood.setGoods_time(rs.getString("goods_time"));
				usrGood.setGoods_attr1(rs.getString("goods_attr1"));
				usrGood.setGoods_attr2(rs.getString("goods_attr2"));
				usrGood.setGoods_attr3(rs.getString("goods_attr3"));
				
				list.add(usrGood);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			dbc.closeConn(rs, pst, conn);
		}
		System.out.println("DAO返回集合数据 = "+list.size());
		return list;
	}

}
