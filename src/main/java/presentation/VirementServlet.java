package presentation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConseillerClientele;
import service.ClientService;
import service.ClientServiceImpl;

public class VirementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ClientService service = new ClientServiceImpl();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String login= request.getSession().getAttribute("login").toString();
		ConseillerClientele cc=service.getCCByLogin(login);
		request.getSession().setAttribute("listeCompte", service.getdAllComptes(cc));
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/virement.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		final int nbCD = Integer.parseInt(request.getParameter("compteDebiteur"));
		final int nbCC = Integer.parseInt(request.getParameter("compteCrediteur"));
		final double mt = Double.parseDouble(request.getParameter("montantVirement"));
		
		service.virementCompteaCompte(service.getCompteByNbCompte(nbCD), service.getCompteByNbCompte(nbCC), mt);
		response.sendRedirect(this.getServletContext().getContextPath() + "/virement");
	}
}
