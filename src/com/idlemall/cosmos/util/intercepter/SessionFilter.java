package com.idlemall.cosmos.util.intercepter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.idlemall.cosmos.util.SystemAttributes;



/**
 * 验证用户是否登录
 */
public class SessionFilter implements Filter {
public FilterConfig config;
	

	public void setFilterConfig(FilterConfig config) {
		this.config = config;
	}

	public FilterConfig getFilterConfig() {
		return config;
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest httpreq = (HttpServletRequest) request;
		HttpServletResponse httpres = (HttpServletResponse) response;
		String noFilter = config.getInitParameter("noFilter");
		String past = config.getInitParameter("past");
		String uri = httpreq.getRequestURI();
		String context = httpreq.getContextPath();
		if (!uri.equals(context + "/")
				&& !uri.equalsIgnoreCase(context + "/" + past)
				&& !checkUrl(uri, context, noFilter)) {
			HttpSession httpSession = httpreq.getSession(true);
			if (httpSession.getAttribute(SystemAttributes.LOGIN_USER) == null) {
				httpres.sendRedirect(context + "/" + past);
				return;
			}
		}

		chain.doFilter(request, response);
	}

	public void destroy() {
		this.config = null;
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		this.config = filterConfig;
			
	}

	private boolean checkUrl(String uri, String context, String noFilter) {
		boolean isFilter = false;
		if (noFilter != null && !noFilter.equals("")) {
			String[] url = noFilter.split(",");
			for (int i = 0; i < url.length; i++) {
				if (uri.equalsIgnoreCase(context + "/" + url[i])) {
					isFilter = true;
					break;
				}
			}
		}
		return isFilter;
	}
}
