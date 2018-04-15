package com.idlemall.cosmos.util.intercepter;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.idlemall.cosmos.action.base.BaseAction;
import com.idlemall.cosmos.model.SysUser;
import com.idlemall.cosmos.util.SystemAttributes;

public class SessionValidationInterceptor extends AbstractInterceptor {
	private static final long serialVersionUID = 1L;
	public static final String LOGIN_PAGE = "loginPage"; 
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext ctx = invocation.getInvocationContext(); 
		Map session = ctx.getSession(); 
		BaseAction action = (BaseAction) invocation.getAction();
		String path = action.getRequest().getServletPath();
		if(path.equals("/sysUser/sysUser!login.action")||path.equals("/uploadify/uploadify!uploadify.action")){
			return invocation.invoke();
		}
		SysUser user = (SysUser) session.get(SystemAttributes.LOGIN_USER);
		if(user != null){
			 return invocation.invoke(); 
		}else{
			return LOGIN_PAGE; 
		}	   
	}

}
