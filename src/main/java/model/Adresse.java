package model;

/**
 * 
 * @author Badr Azeri et Steven Roman
 * 
 * Cette Classe regroupe tous les elements necessaires � constituer une adresse,
 * Un num�ro de rue, une rue, un code postal et une ville.
 *
 */

public class Adresse {
	
	//---------- Attributs de la Classe Adresse 
	private int idAdresse;
	private String adresse;
	private int codePostal;
	private String ville;
	
	//---------- Constructeurs de la Classe Adresse
	
	public Adresse() {
		super();
	}
	
	/**
	 * 
	 * @param adresse rue et numero de rue
	 * @param codePostal le code postal
	 * @param ville la ville
	 */
	
	public Adresse(int idAdresse, String adresse, int codePostal, String ville) {
		super();
		this.idAdresse = idAdresse;
		this.adresse = adresse;
		this.codePostal = codePostal;
		this.ville = ville;
	}
	
	//---------- Getters & Setters
	/**
	 * 
	 * @return id adresse
	 */
	public int getIdAdresse() {
		return idAdresse;
	}
	
	/**
	 * 
	 * @param idAdresse identifant adresse
	 */

	public void setIdAdresse(int idAdresse) {
		this.idAdresse = idAdresse;
	}
	
	/**
	 * 
	 * @return adresse
	 */
	public String getAdresse() {
		return adresse;
	}

	/**
	 * 
	 * @param adresse rue et numero de rue
	 */
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	/**
	 * 
	 * @return code postal
	 */
	public int getCodePostal() {
		return codePostal;
	}

	/**
	 * 
	 * @param codePostal code postal
	 */
	
	public void setCodePostal(int codePostal) {
		this.codePostal = codePostal;
	}

	/**
	 * 
	 * @return ville
	 */
	public String getVille() {
		return ville;
	}

	/**
	 * 
	 * @param ville ville
	 */
	
	public void setVille(String ville) {
		this.ville = ville;
	}

	
	//---------- Reecriture de la methode toString
	
	/**
	 * La methode toString retourne le numero de rue, la rue, le code postal et la
	 * ville
	 */
	
	@Override
	public String toString() {
		return "Adresse [IdAdresse=" + idAdresse + ", adresse=" + adresse + ", codePostal=" + codePostal + ", ville="
				+ ville + "]";
	}
	

}
