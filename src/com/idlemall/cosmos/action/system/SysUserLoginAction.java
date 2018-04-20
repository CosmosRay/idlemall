package com.idlemall.cosmos.action.system;

import javax.servlet.http.HttpSession;

import com.idlemall.cosmos.action.base.BaseAction;
import com.idlemall.cosmos.model.SysUser;
import com.idlemall.cosmos.service.system.SysUserServiceImpl;

@SuppressWarnings("serial")
public class SysUserLoginAction extends BaseAction{
	private SysUser sysUser;
	private SysUserServiceImpl sysUserServiceImpl;
	//检测是否登录如果没有登录跳转登录界面
	public String sysUserLogin(){
		return "success";
	}
	//退出登录
		public String exit(){
			getRequest().getSession().setAttribute("sysUser", null);
			return "success";
		}
	/**
	 * 先从session中获取到sysUser的数据
	 * 获取登录的用户名和密码
	 * 与数据库对比并返回结果
	 */
	@SuppressWarnings("unchecked")
	public String mySysUserLogin(){
		sysUserServiceImpl = new SysUserServiceImpl();
		/*从session中获取登录用户信息*/
		HttpSession session =  getRequest().getSession();
		sysUser = (SysUser) session.getAttribute("sysUser");
		System.out.println("sysUser = "+sysUser);
		//获取页面中的信息
		String name = getRequest().getParameter("iname");
		String pass = getRequest().getParameter("ipass");
		SysUser usr = new SysUser();
		usr.setUser_name(name);
		usr.setUser_pass(pass);
		sysUser = sysUserServiceImpl.selectSysUser(usr);
		getSession().put("sysUser", sysUser);
		if(sysUser==null){
			return "defeated";
		}
		return "success";
	}
	
	
	public SysUser getSysUser() {
		return sysUser;
	}
	public void setSysUser(SysUser sysUser) {
		this.sysUser = sysUser;
	}
	public SysUserServiceImpl getSysUserServiceImpl() {
		return sysUserServiceImpl;
	}
	public void setSysUserServiceImpl(SysUserServiceImpl sysUserServiceImpl) {
		this.sysUserServiceImpl = sysUserServiceImpl;
	}
	
}
