package com.idlemall.cosmos.action.base;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Administrator
 *
 */
public class BaseAction extends ActionSupport implements SessionAware,ServletRequestAware, ServletResponseAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;  
	private HttpServletResponse response;  
	@SuppressWarnings("rawtypes")
	private SessionMap session;
	private String path;
	
	public String getPath() {
		path = getRequest().getContextPath();
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	//获取request,response,session方式一，IoC方式，必须实现SessionAware, ServletRequestAware, ServletResponseAware  
    @SuppressWarnings("rawtypes")
	public void setSession(Map map) {  
        this.session = (SessionMap) map;  
    }  
    public void setServletRequest(HttpServletRequest request) {  
        this.request = request;  
    }  
    public void setServletResponse(HttpServletResponse response) {  
        this.response = response;  
    }
	/**
	 * @return the request
	 */
	public HttpServletRequest getRequest() {
		return request;
	}
	/**
	 * @param request the request to set
	 */
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	/**
	 * @return the response
	 */
	public HttpServletResponse getResponse() {
		response.setCharacterEncoding("UTF-8");
		return response;
	}
	/**
	 * @param response the response to set
	 */
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
	/**
	 * @return the session
	 */
	@SuppressWarnings("rawtypes")
	public SessionMap getSession() {
		return session;
	}
	/**
	 * @param session the session to set
	 */
	@SuppressWarnings("rawtypes")
	public void setSession(SessionMap session) {
		this.session = session;
	}  

}
