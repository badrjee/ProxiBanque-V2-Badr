package service;
/**
 * 
 * @author Badr Azeri et Steven Roman
 *
 */

import java.util.List;

import model.Adresse;
import model.Client;
import model.Compte;
import model.ConseillerClientele;

public interface ClientService {
	/**
	 * 
	 * @param c
	 *            de type Client
	 */
	public void addClient(Client c);

	/**
	 * 
	 * @param id
	 *            identifiant cleint
	 * @return validation de l'ajout client
	 */
	public Client getValidatedClient(int id);

	/**
	 * 
	 * @return liste des clients
	 */
	public List<Client> getAllClients();

	/**
	 * 
	 * @param id
	 *            identifiant client
	 */
	public void deleteClient(int id);

	/**
	 * 
	 * @param login
	 *            login du conseiller
	 * @return le conseiller clientele
	 */
	public ConseillerClientele getCCByLogin(String login);

	/**
	 * 
	 * @param login
	 *            conseiller clientele
	 * @param password
	 *            mot de conseiller clientele
	 * @return false ou ture
	 * @throws ErreurLogin
	 *             mot de passe ou login incorrect
	 */
	public boolean VerifierConnexion(String login, String password) throws ErreurLogin;

	/**
	 * 
	 * @param c
	 *            client de type Client
	 * @param nom
	 *            nom client
	 * @param prenom
	 *            prenom client
	 * @param email
	 *            email client
	 * @param telephone
	 *            telephone client
	 * @param adresse
	 *            adresse client
	 */
	public void updateClient(Client c, String nom, String prenom, String email, int telephone, Adresse adresse);

	/**
	 * 
	 * @param cc
	 *            conseiller clientele
	 * @return la liste des client du conseiller clientele
	 */
	public List<Client> getClients(ConseillerClientele cc);

	/**
	 * 
	 * @param c
	 *            client de type Client
	 * @return liste des comptes du client c
	 */
	public List<Compte> getComptes(Client c);

	/**
	 * 
	 * @param cc
	 *            conseiller clientele
	 * @return liste des comptes gerer par le conseiller clientele
	 */
	public List<Compte> getdAllComptes(ConseillerClientele cc);

	/**
	 * 
	 * @param c1
	 *            compte debiteur
	 * @param c2
	 *            compte crediteur
	 * @param mt
	 *            montant du virement
	 */
	public void virementCompteaCompte(Compte c1, Compte c2, double mt);
	
	public Compte getCompteByNbCompte(int numeroDeCompte);
}
