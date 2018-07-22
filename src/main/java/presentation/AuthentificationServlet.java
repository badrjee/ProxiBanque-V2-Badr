package presentation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConseillerClientele;
import service.ClientService;
import service.ClientServiceImpl;
import service.ErreurLogin;

public class AuthentificationServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	ClientService service = new ClientServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/authentification.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		final String login = request.getParameter("login");
		final String password = request.getParameter("pwd");
		try {
			boolean isAuth =service.VerifierConnexion(login, password);
			
			if(isAuth) {
				request.getSession().setAttribute("login", login);
				response.sendRedirect(this.getServletContext().getContextPath() + "/accueil");
			}else {
				request.getSession().setAttribute("login", null);
				response.sendRedirect(this.getServletContext().getContextPath() + "/authentification");
			}
			
		} catch (ErreurLogin e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
}
