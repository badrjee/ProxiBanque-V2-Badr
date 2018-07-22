package dao;

import java.util.List;

import model.Adresse;
import model.Client;
import model.Compte;
import model.ConseillerClientele;
import service.MontantNegatifException;

public interface IDao {
	
	public void save(Client c);
	public void update(Client c, String nom, String prenom, String email, int telephone, Adresse adresse );
	public void delete(int id);
	public Client FindById(int id);
	public ConseillerClientele FindByLogin(String login);
	public Compte FindCompteByNbCompte(int numeroDeCompte);
	
	
	public List<Client> FindAll();
	public List<Client> FindClients(ConseillerClientele cc);
	public List<Compte> FindComptes(Client c);
	public List<Compte> FindAllComptes(ConseillerClientele cc);
	public void virementCC(Compte c1, Compte c2, double mt) throws MontantNegatifException;

}
