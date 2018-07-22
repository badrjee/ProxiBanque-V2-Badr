package service;
/**
 * 
 * @author Badr Azeri et Steven Roman
 *
 */

public class ErreurLogin extends Exception {
	/**
	 * constructeur
	 * @param message prends le msg en param
	 */

	public ErreurLogin(String message) {

		super(message);
		
	}
}