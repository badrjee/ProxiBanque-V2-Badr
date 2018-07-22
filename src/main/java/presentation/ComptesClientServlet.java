package presentation;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Client;
import model.Compte;
import service.ClientService;
import service.ClientServiceImpl;

public class ComptesClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ClientService service = new ClientServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		final int id = Integer.parseInt(request.getParameter("idClient"));
		Client c = service.getValidatedClient(id);
		List<Compte> listecomptes = service.getComptes(c);
		c.setComptes(listecomptes);
		request.setAttribute("client", c);
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/comptesclient.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//final String login = request.getParameter("login");
		//final String password = request.getParameter("pwd");
		//ArticleService.getSingleton().create(title, description);
		//response.sendRedirect(this.getServletContext().getContextPath() + "/accueil");
		this.doGet(request, response);
	}
}
