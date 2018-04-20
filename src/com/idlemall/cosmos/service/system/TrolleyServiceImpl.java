package com.idlemall.cosmos.service.system;

import java.util.List;

import com.idlemall.cosmos.dao.system.TrolleyDaoImpl;
import com.idlemall.cosmos.model.TrolleyForm;
import com.idlemall.cosmos.model.UserGoods;

public class TrolleyServiceImpl implements TrolleyService {
	private TrolleyDaoImpl trolleyDaoImpl;
	@Override
	public int saveTrolley(TrolleyForm trolley) {
		trolleyDaoImpl = new TrolleyDaoImpl();
		Object[] param = {trolley.getUser_id(),trolley.getGoods_id()};
		String sql = "insert into trolley_form (user_id,goods_id) values(?,?)";
		int k = trolleyDaoImpl.saveTrolley(param, sql);
		return k;
	}
	@Override
	public List<UserGoods> selectTrolley(int user_id) {
		trolleyDaoImpl = new TrolleyDaoImpl();
		Object[] param = {user_id};
		//select goods_id from trolley_form where user_id=?
		String sql = "select * from user_goods where goods_id in (select goods_id from trolley_form where user_id=?)";
		List<UserGoods> list = trolleyDaoImpl.selectTrolley(param, sql);
		return list;
	}
	@Override
	public int deleteTrolley(TrolleyForm trol) {
		// TODO Auto-generated method stub
		trolleyDaoImpl = new TrolleyDaoImpl();
		Object[] param = {trol.getUser_id(),trol.getGoods_id()};
		String sql = "delete from trolley_form where user_id=? and goods_id=?";
		int k = trolleyDaoImpl.deleteTrolley(param, sql);
		return k;
	}
	public TrolleyDaoImpl getTrolleyDaoImpl() {
		return trolleyDaoImpl;
	}
	public void setTrolleyDaoImpl(TrolleyDaoImpl trolleyDaoImpl) {
		this.trolleyDaoImpl = trolleyDaoImpl;
	}

	
}
