package model;

/**
 * 
 * @author Badr AZERI et Steven ROMAN
 *
 */

public abstract class Personne {

	// Attribus

	private int idPersonne;
	private String prenom, nom;

	// Constructeurs

	public Personne() {

	}

	/**
	 * 
	 * @param idPersonne
	 *            identifaint des personnes, clients et conseiller clientele
	 * @param prenom
	 *            prenom des personnes, clients et conseiller clientele
	 * @param nom
	 *            nom des personnes, clients et conseillers clientele
	 */
	public Personne(int idPersonne, String prenom, String nom) {
		super();
		this.idPersonne = idPersonne;
		this.prenom = prenom;
		this.nom = nom;
	}

	// Getters & Setters
	/**
	 * 
	 * @return id personne
	 */
	public int getIdPersonne() {
		return idPersonne;
	}

	/**
	 * 
	 * @param idPersonne
	 *            identifiant personne
	 */
	public void setIdPersonne(int idPersonne) {
		this.idPersonne = idPersonne;
	}

	/**
	 * 
	 * @return prenom
	 */
	public String getPrenom() {
		return prenom;
	}

	/**
	 * 
	 * @param prenom
	 *            prenom personne
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	/**
	 * 
	 * @return nom
	 */
	public String getNom() {
		return nom;
	}

	/**
	 * 
	 * @param nom
	 *            nom personne
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	// Methodes
	/**
	 * to string nous retourn identifiant personne, nom personne, pernom personne
	 */
	@Override
	public String toString() {
		return "Personne [idPersonne=" + idPersonne + ", prenom=" + prenom + ", nom=" + nom + "]";
	}
}
