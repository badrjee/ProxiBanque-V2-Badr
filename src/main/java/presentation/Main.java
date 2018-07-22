package presentation;

import model.Compte;
import service.ClientService;
import service.ClientServiceImpl;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ClientService service = new ClientServiceImpl();
		Compte cc=service.getCompteByNbCompte(3216941);
		System.out.println(cc);
		//request.setAttribute("client", c);
		//this.getServletContext().getRequestDispatcher("/WEB-INF/views/comptesclient.jsp").forward(request, response);
	}

}

