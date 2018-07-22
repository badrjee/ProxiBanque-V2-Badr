package model;

import java.util.ArrayList;
import java.util.Collection;

/**
 * 
 * @author Badr Azeri et Steven Roman
 *
 */

public class Client extends Personne {

	// ---------- Attributs de la Classe Client

	private int telephone;
	private Adresse adresse;
	private String email;
	private boolean typeDeClient;
	private ConseillerClientele conseiller;
	private Collection<Compte> comptes = new ArrayList<Compte>();
	private Collection<Placement> placements = new ArrayList<Placement>();

	// ---------- Constructeur de la Classe Personne

	public Client(String prenom, String nom, String email) {
		super();
		super.setPrenom(prenom);
		super.setNom(nom);
		this.email = email;
	}

	/**
	 * 
	 * @param prenom
	 *            prenom du client
	 * @param nom
	 *            nom du client
	 * @param adresse
	 *            adresse du client
	 * @param email
	 *            email du client
	 */
	public Client(String prenom, String nom, Adresse adresse, String email) {
		super();
		super.setPrenom(prenom);
		super.setNom(nom);
		this.email = email;
		this.adresse = adresse;
	}

	/**
	 * 
	 * @param prenom
	 *            prenom du client
	 * @param nom
	 *            nom du client
	 * @param telephone
	 *            telephone du client
	 * @param adresse
	 *            adresse du client
	 * @param email
	 *            mail du client
	 */
	public Client(String prenom, String nom, int telephone, Adresse adresse, String email) {
		super();
		super.setPrenom(prenom);
		super.setNom(nom);
		this.telephone = telephone;
		this.adresse = adresse;
		this.email = email;
	}

	// ---------- Getters & Setters

	/**
	 * 
	 * @return le telephone
	 */
	public int getTelephone() {
		return telephone;
	}

	/**
	 * 
	 * @param telephone
	 *            téléphone du client
	 */

	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}

	/**
	 * 
	 * @return adresse
	 */
	public Adresse getAdresse() {
		return adresse;
	}

	/**
	 * 
	 * @param adresse
	 *            adresse du client
	 */
	public void setAdresse(Adresse adresse) {
		this.adresse = adresse;
	}

	/**
	 * 
	 * @return Email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * 
	 * @param email
	 *            le mail du client
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * 
	 * @return soit TRUE ou FALSE, 0 ou 1
	 */
	public boolean isTypeDeClient() {
		return typeDeClient;
	}

	/**
	 * 
	 * @param typeDeClient
	 *            retourn un boolena pour le type de compte (compteCourant=0,
	 *            compteEpargne=1)
	 */
	public void setTypeDeClient(boolean typeDeClient) {
		this.typeDeClient = typeDeClient;
	}

	/**
	 * 
	 * @return liste conseiller
	 */
	public ConseillerClientele getConseiller() {
		return conseiller;
	}

	/**
	 * 
	 * @param conseiller
	 *            conseiller qui gére le client de type ConseillerClientele
	 */
	public void setConseiller(ConseillerClientele conseiller) {
		this.conseiller = conseiller;
	}

	/**
	 * 
	 * @return list de comptes
	 */
	public Collection<Compte> getComptes() {
		return comptes;
	}

	/**
	 * 
	 * @param comptes
	 *            listes des comptes clients
	 */
	public void setComptes(Collection<Compte> comptes) {
		this.comptes = comptes;
	}

	/**
	 * @return palcement (ont a pas utiliser cette classe dans notre V2)
	 */

	public Collection<Placement> getPlacements() {
		return placements;
	}

	/**
	 * 
	 * @param placements
	 *            liste des palcements effectuer (ont a pas utiliser cette classe
	 *            dans notre V2)
	 */
	public void setPlacements(Collection<Placement> placements) {
		this.placements = placements;
	}
	// ---------- Reecriture de la methode toString

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */

	/**
	 * La methode toString retourne nom, prenom, adresse, mail, conseiller, type de
	 * compte
	 */
	@Override
	public String toString() {
		return "Client [getIdPersonne= " + getIdPersonne() + ", nom =" + getNom() + ", prenom =" + getPrenom()
				+ ", telephone=" + telephone + ", adresse=" + adresse + ", email=" + email + ", typeDeClient="
				+ typeDeClient + ", conseiller=" + conseiller + ", comptes=" + comptes + ", placements=" + placements
				+ "]";
	}

}
