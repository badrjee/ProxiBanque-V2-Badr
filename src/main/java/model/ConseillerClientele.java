package model;

import java.util.ArrayList;
import java.util.Collection;

/**
 * 
 * @author Badr AZERI et Steven ROMAN
 *
 */
public class ConseillerClientele extends Personne {

	// ---------- Attributs de la Classe ConseillerClientelle

	private String login;
	private String password;
	private Gerant gerant;
	private Collection<Client> clients = new ArrayList<Client>();

	// ---------- Constructeur de la Classe Conseill� Clientelle

	public ConseillerClientele() {

	}

	/**
	 * 
	 * @param prenom
	 *            prenom du conseiller clientele
	 * @param nom
	 *            nom du conseiller clientele
	 * @param login
	 *            login du conseiller clientele
	 * @param password
	 *            password du conseiller clientele
	 */
	public ConseillerClientele(String prenom, String nom, String login, String password) {
		super.setPrenom(prenom);
		super.setNom(nom);
		this.login = login;
		this.password = password;
	}

	// ---------- Getters & Setters

	/**
	 * 
	 * @return login
	 */
	public String getLogin() {
		return login;
	}

	/**
	 * 
	 * @param login
	 *            login du conseiller clientele
	 */
	public void setLogin(String login) {
		this.login = login;
	}

	/**
	 * 
	 * @return mot de passe
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * 
	 * @param password
	 *            mot de passe du conseiller clientele
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 
	 * @return gerant (ont a pas utilsier cette classe dans notre V2)
	 */
	public Gerant getGerant() {
		return gerant;
	}

	/**
	 * 
	 * @param gerant
	 *            gerent de la banque (ont a pas utiliser cette classe dans notres
	 *            V2)
	 */
	public void setGerant(Gerant gerant) {
		this.gerant = gerant;
	}

	/**
	 * 
	 * @return liste clients
	 */
	public Collection<Client> getClients() {
		return clients;
	}

	/**
	 * 
	 * @param clients
	 *            liste des clients gerer pas le conseillee clientele
	 */
	public void setClients(Collection<Client> clients) {
		this.clients = clients;
	}

	// ---------- Reecriture de la methode toString
	/**
	 * methode to string no retourne login, mot de passe, gerant, liste de clients
	 */
	@Override
	public String toString() {
		return "ConseillerClientele [login=" + login + ", password=" + password + ", gerant=" + gerant + ", clients="
				+ clients + "]";
	}

}
