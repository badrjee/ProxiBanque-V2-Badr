package model;

/**
 * 
 * @author Badr Azeri et Steven Roman
 *
 */
public class CompteCourant extends Compte {

	// ---------- Attributs de la Classe Adresse

	private double decouvert = 1000;

	// ---------- Constructeurs de la Classe Adresse
	/**
	 * On ne construit pas dans la classe mere dans se cas
	 * 
	 * @param numeroDeCompte
	 *            numero de compte
	 * @param dateOuvertureCompte
	 *            date d'ouverture de compte
	 * @param decouvert
	 *            decouvert autoris�
	 */

	public CompteCourant(int numeroDeCompte, String dateOuvertureCompte, double decouvert) {
		super();
		super.numeroDeCompte = numeroDeCompte;
		super.dateOuvertureCompte = dateOuvertureCompte;
		this.decouvert = decouvert;
		super.typeDeCompte = false;
	}

	// ---------- Getters & Setters
	/**
	 * 
	 * @return devouvert
	 */
	public double getDecouvert() {
		return decouvert;
	}

	/**
	 * 
	 * @param decouvert
	 *            decouvert autoriser
	 */
	public void setDecouvert(double decouvert) {
		this.decouvert = decouvert;
	}

	// ---------- Reecriture de la methode toString

	@Override
	public String toString() {
		return "CompteCourant [Num�ro de compte = " + super.numeroDeCompte + "Solde = " + super.solde
				+ "numeroDeCompte = " + numeroDeCompte + " ; dateOuvertureCompte = " + dateOuvertureCompte
				+ " ; decouvert=" + decouvert + "]";
	}
}
