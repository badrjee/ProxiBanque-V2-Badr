package service;

import java.util.List;

import dao.IDao;
import dao.DBIDao;
import model.Adresse;
import model.Client;
import model.Compte;
import model.ConseillerClientele;
/**
 * 
 * @author Badr Azeri et Steven Roman
 *
 */

public class ClientServiceImpl implements ClientService {

	
	//private ClientDao dao= new MemoryClientDao();
	private IDao dao= new DBIDao();
	
	@Override
	public void addClient(Client c) {
		// TODO Auto-generated method stub
		dao.save(c);
	}

	@Override
	public Client getValidatedClient(int id) {
		// TODO Auto-generated method stub
		return dao.FindById(id);
	}

	@Override
	public List<Client> getAllClients() {
		// TODO Auto-generated method stub
		return dao.FindAll();
	}

	@Override
	public void deleteClient(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}


	@Override
	public ConseillerClientele getCCByLogin(String login) {
		return dao.FindByLogin(login);
	}
	
	@Override
	public boolean VerifierConnexion(String login, String password) throws ErreurLogin {
		
		ConseillerClientele cc = this.getCCByLogin(login);
		if(cc==null) throw new ErreurLogin("Le login que vous avez rentré n'est pas valide");
		
		if(cc.getLogin().equals(login) && cc.getPassword().equals(password)) {
			return true;
		}else {
			return false;
		}		
	}
	
	@Override
	public void updateClient(Client c, String nom, String prenom, String email, int telephone, Adresse adresse) {
		// TODO Auto-generated method stub
		dao.update(c, nom, prenom, email, telephone, adresse);
	}

	@Override
	public List<Client> getClients(ConseillerClientele cc) {
		
		return dao.FindClients(cc);
	}

	@Override
	public List<Compte> getComptes(Client c) {
		
		return dao.FindComptes(c);
	}
	
	@Override
	public List<Compte> getdAllComptes(ConseillerClientele cc) {
		
		return dao.FindAllComptes(cc);
	}

	@Override
	public void virementCompteaCompte(Compte c1, Compte c2, double mt) {
		
		try {
			dao.virementCC(c1, c2, mt);
		} catch (MontantNegatifException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public Compte getCompteByNbCompte(int numeroDeCompte) {
		return dao.FindCompteByNbCompte(numeroDeCompte);
	}


}
