package presentation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ClientService;
import service.ClientServiceImpl;

public class ModifierClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ClientService service = new ClientServiceImpl();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		final int id = Integer.parseInt(request.getParameter("idClient"));
		response.sendRedirect(this.getServletContext().getContextPath() + "/editclient?idClient="+id);
	}
}
