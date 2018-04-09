package com.idlemall.servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.idlemall.pojo.SysUser;
import com.idlemall.service.SysUserService;

/**
 * Servlet implementation class SysUserLogin
 */
@WebServlet("/SysUserLogin")
public class SysUserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SysUserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*将用户名密码放入一个对象*/
		SysUser sysUser = new SysUser();
		String sys_name = request.getParameter("name");
		String sys_pass = request.getParameter("pass");
		sysUser.setSys_name(sys_name);
		sysUser.setSys_pass(sys_pass);
		
		SysUserService sysUserService = new SysUserService();
		int i = sysUserService.selectSysUser(sysUser);
		if(i==1){
			response.sendRedirect("admin/index.jsp");
		}else{
			response.sendRedirect("admin/login.jsp");
		}
	}

}
