package presentation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Adresse;
import model.Client;
import service.ClientService;
import service.ClientServiceImpl;

public class EditClientServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	ClientService service = new ClientServiceImpl();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		final int id = Integer.parseInt(request.getParameter("idClient"));
		request.setAttribute("client", service.getValidatedClient(id));
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/editclient.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		final int idPersonne = Integer.parseInt(request.getParameter("idPersonne"));
		final String nom = request.getParameter("nomClient");
		final String prenom = request.getParameter("prenomClient");
		final String email = request.getParameter("emailClient");
		final String adresse = request.getParameter("adresseClient");
		final int codePostal = Integer.parseInt(request.getParameter("cpClient"));
		final String ville = request.getParameter("villeClient");
		final int telephone = Integer.parseInt(request.getParameter("telClient"));
		
		Client c = service.getValidatedClient(idPersonne);
		Adresse a = new Adresse(c.getAdresse().getIdAdresse(),adresse,codePostal,ville); 
		service.updateClient(c, nom, prenom, email, telephone, a);
		response.sendRedirect(this.getServletContext().getContextPath() + "/accueil");
	}
	
	
}
