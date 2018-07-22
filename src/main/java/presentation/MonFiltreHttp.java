package presentation;

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

public class MonFiltreHttp implements Filter {

	public static final String SESSION_AUTH = "login";
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		final HttpSession session = ((HttpServletRequest) request).getSession();
		if(session.getAttribute(SESSION_AUTH)!=null) {
			chain.doFilter(request, response);
		}else {
			((HttpServletResponse)response).sendRedirect(((HttpServletRequest) request).getContextPath()+"/authentification");
			//sendError
		}
		
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
