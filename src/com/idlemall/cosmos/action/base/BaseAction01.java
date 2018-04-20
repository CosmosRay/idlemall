package com.idlemall.cosmos.action.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/** 封装项目中最通用，或者需要全局使用的代码
 * @author CosmosRay
 *
 */
@SuppressWarnings("serial")
public class BaseAction01 extends ActionSupport {
	//JSON 字符串
	public String jsonString;

	/**
	 * 输出JSON 字符串 
	 */
	public void outJsonString(String str) {
		getResponse().setContentType("text/javascript;charset=UTF-8");
		outString(str);
	}

	/**
	 * 输出字符串
	 */
	public void outString(String str) {
		try {
			PrintWriter out = getResponse().getWriter();
			out.write(str);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 输出XML字符串 
	 */
	public void outXMLString(String xmlStr) {
		getResponse().setContentType("application/xml;charset=UTF-8");
		outString(xmlStr);
	}

	/**
	 *用ActionContext对象 获取 Servelet API 的 Request 对象 
	 */
	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	/**
	 *用ActionContext对象 获取 Servelet API 的 Response 对象 
	 */
	public HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	/**
	 * 用ActionContext对象 获取 Servelet API 的 Session对象 
	 */
	public HttpSession getSession() {
		return getRequest().getSession();
	}

	/**
	 * 用ActionContext对象 获取 Servelet API 的 ServletContext 对象 
	 */
	public ServletContext getServletContext() {
		return ServletActionContext.getServletContext();
	}

	/**
	 * 获取 RealPath 真正的路径 
	 */
	public String getRealyPath(String path) {
		return getServletContext().getRealPath(path);
	}
	
}