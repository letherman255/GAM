package fr.mcnanotech.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jasypt.util.password.ConfigurablePasswordEncryptor;

import fr.mcnanotech.beans.User;
import fr.mcnanotech.dao.UserDao;

public final class Connection {
	private static final String FIELD_USERNAME = "username";
	private static final String FIELD_PASSWORD = "password";
	private static final String CRYPTING = "SHA-256";

	private String resultat;
	private Map<String, String> errors = new HashMap<String, String>();

	private UserDao userDao;

	public Connection(UserDao userDao) {
		this.userDao = userDao;
	}

	public String getResult() {
		return resultat;
	}

	public Map<String, String> getErrors() {
		return errors;
	}

	public User connectUser(HttpServletRequest request) {
		/* R�cup�ration des champs du formulaire */
		String username = getFieldValue(request, FIELD_USERNAME);
		String password = getFieldValue(request, FIELD_PASSWORD);

		User user = new User();

		try {
			verifyUsername(username);
		} catch (Exception e) {
			setError(FIELD_USERNAME, e.getMessage());
		}
		if (user != null && username != null) {
			user.setUsername(username.toLowerCase());
		}

		/* Validation du champ mot de passe. */
		try {
			verifyAcces(username, password.toLowerCase());
		} catch (Exception e) {
			setError(FIELD_PASSWORD, e.getMessage());
		}
		if (user != null && password != null) {
			user.setPassword(password.toLowerCase());
		}

		/* Initialisation du r�sultat global de la validation. */
		if (errors.isEmpty()) {
			resultat = "Succ�s de la connexion.";
		} else {
			resultat = "�chec de la connexion.";
		}

		return user;
	}

	private boolean processPassword(String plainPassword,
			String encryptedPassword) {
		/*
		 * Utilisation de la biblioth�que Jasypt pour comparer le mot de passe
		 * rent� avec une emprunte.
		 */
		ConfigurablePasswordEncryptor passwordEncryptor = new ConfigurablePasswordEncryptor();
		passwordEncryptor.setAlgorithm(CRYPTING);
		passwordEncryptor.setPlainDigest(false);
		return passwordEncryptor
				.checkPassword(plainPassword, encryptedPassword);

	}

	private void verifyUsername(String username) throws FormValidationException {
		if (username != null) {
			if (username.length() < 3) {
				throw new FormValidationException(
						"V�tre nom d'utilisateur doit contenit au moins 3 caract�res.");
			} else if (userDao.find(username, "username") == null) {
				throw new FormValidationException("Nom D'utilisateur inconue.");
			}
		} else {
			throw new FormValidationException(
					"Merci de saisir un nom d'utilisateur.");
		}
	}

	private void verifyAcces(String username, String password)
			throws FormValidationException {
		if (password != null) {
			if (password.length() < 5) {
				throw new FormValidationException(
						"Le mot de passe doit contenir au moins 5 caract�res.");
			} else if (!processPassword(password,
					userDao.find(username, "username").getPassword())) {

				throw new FormValidationException("Mot de passe inconnue.");
			}
		} else {
			throw new FormValidationException(
					"Merci de saisir v�tre mot de passe.");
		}

	}

	/*
	 * Ajoute un message correspondant au champ sp�cifi� � la map des erreurs.
	 */
	private void setError(String champ, String message) {
		errors.put(champ, message);
	}

	/*
	 * M�thode utilitaire qui retourne null si un champ est vide, et son contenu
	 * sinon.
	 */
	private static String getFieldValue(HttpServletRequest request,
			String nomChamp) {
		String valeur = request.getParameter(nomChamp);
		if (valeur == null || valeur.trim().length() == 0) {
			return null;
		} else {
			return valeur;
		}
	}
}