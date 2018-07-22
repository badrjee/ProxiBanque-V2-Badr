package presentation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConseillerClientele;
import service.ClientService;
import service.ClientServiceImpl;

public class AccueilServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	ClientService service = new ClientServiceImpl();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String login= request.getSession().getAttribute("login").toString();
		System.out.println(login);
		ConseillerClientele cc=service.getCCByLogin(login);
		request.getSession().setAttribute("listeClient", service.getClients(cc));
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/accueil.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//response.sendRedirect(this.getServletContext().getContextPath() + "/virement");
	}
	
	
}
