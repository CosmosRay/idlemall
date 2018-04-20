package com.idlemall.cosmos.action.system;

import com.idlemall.cosmos.action.base.BaseAction;
import com.idlemall.cosmos.model.SysUser;
import com.idlemall.cosmos.service.system.SysUserServiceImpl;

@SuppressWarnings("serial")
public class SysUserAction extends BaseAction{
	private SysUserServiceImpl sysUserServiceImpl;
	//进入个人管理系统
	public String myOwn(){
		getRequest().getSession().setAttribute("url", "personal");
		return "success";
	}
	//修改个人信息
	public String editOwn(){
		return "success";
	}
	public String saveOwn(){
		sysUserServiceImpl = new SysUserServiceImpl();
		//获取session中的id
		SysUser sysUser = (SysUser) getRequest().getSession().getAttribute("sysUser");
		int id = sysUser.getUser_id();
		//获取前台信息
		int gender = Integer.parseInt(getRequest().getParameter("gender"));
		String clas = getRequest().getParameter("class");
		int faculty = Integer.parseInt(getRequest().getParameter("faculty"));
		String qq = getRequest().getParameter("qq");
		String address = getRequest().getParameter("address");
		SysUser user = new SysUser();
		user.setUser_id(id);
		user.setUser_gender(gender);
		user.setUser_class(clas);
		user.setFaculty_sort_id(faculty);
		user.setUser_qq(qq);
		user.setUser_address(address);
		int k = sysUserServiceImpl.saveSysUser(user);
		getRequest().getSession().setAttribute("url", "personal");
		if(k==0){
			return "404";
		}
		return "success";
	}
	//修改密码
	public String editPwd(){
		return "success";
	}
	//保存修改密码
	public String savePwd(){
		sysUserServiceImpl = new SysUserServiceImpl();
		String jpwd = getRequest().getParameter("jpwd");
		String xpwd = getRequest().getParameter("xpwd");
		//获取新密码
		SysUser sysUser = (SysUser) getRequest().getSession().getAttribute("sysUser");
		int id = sysUser.getUser_id();
		int k = sysUserServiceImpl.savePwd(id, jpwd, xpwd);
		if(k==0){
			return "404";
		}
		return "success";
	}
	
	//**********set get***********
	public SysUserServiceImpl getSysUserServiceImpl() {
		return sysUserServiceImpl;
	}
	public void setSysUserServiceImpl(SysUserServiceImpl sysUserServiceImpl) {
		this.sysUserServiceImpl = sysUserServiceImpl;
	}
	
}
