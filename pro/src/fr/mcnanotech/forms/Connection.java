package fr.mcnanotech.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jasypt.util.password.ConfigurablePasswordEncryptor;

import fr.mcnanotech.beans.User;
import fr.mcnanotech.dao.UserDao;

public final class Connection
{
    private static final String FIELD_USERNAME = "username";
    private static final String FIELD_PASSWORD = "password";
    private static final String CRYPTING = "SHA-256";

    private String resultat;
    private Map<String, String> errors = new HashMap<String, String>();

    private UserDao userDao;

    public Connection(UserDao userDao)
    {
        this.userDao = userDao;
    }

    public String getResult()
    {
        return resultat;
    }

    public Map<String, String> getErrors()
    {
        return errors;
    }

    public User connectUser(HttpServletRequest request)
    {
        /* Récupération des champs du formulaire */
        String username = getFieldValue(request, FIELD_USERNAME);
        String password = getFieldValue(request, FIELD_PASSWORD);

        User user = new User();

        try
        {
            verifyUsername(username);
        }
        catch(Exception e)
        {
            setError(FIELD_USERNAME, e.getMessage());
        }
        user.setUsername(username);

        /* Validation du champ mot de passe. */
        try
        {
            verifyAcces(username, password);
        }
        catch(Exception e)
        {
            setError(FIELD_PASSWORD, e.getMessage());
        }
        user.setPassword(password);

        /* Initialisation du résultat global de la validation. */
        if(errors.isEmpty())
        {
            resultat = "Succès de la connexion.";
        }
        else
        {
            resultat = "Échec de la connexion.";
        }

        return user;
    }

    private boolean processPassword(String plainPassword, String encryptedPassword)
    {
        /*
         * Utilisation de la bibliothèque Jasypt pour comparer le mot de passe
         *renté avec une emprunte.
         */
        ConfigurablePasswordEncryptor passwordEncryptor = new ConfigurablePasswordEncryptor();
        passwordEncryptor.setAlgorithm(CRYPTING);
        passwordEncryptor.setPlainDigest(false);
        return passwordEncryptor.checkPassword(plainPassword, encryptedPassword);

    }

    private void verifyUsername(String username) throws FormValidationException
    {
        if(username != null)
        {
            if(username.length() < 3)
            {
                throw new FormValidationException("Vôtre nom d'utilisateur doit contenit au moins 3 caractères.");
            }
            else if(userDao.find(username, "username") == null)
            {
                throw new FormValidationException("Nom D'utilisateur inconut.");
            }
        }
        else
        {
            throw new FormValidationException("Merci de saisir un nom d'utilisateur.");
        }
    }

    private void verifyAcces(String username, String password) throws FormValidationException
    {
        if(password != null)
        {
            if(password.length() < 5)
            {
                throw new FormValidationException("Le mot de passe doit contenir au moins 5 caractères.");
            }
            else if(!processPassword(password, userDao.find(username, "username").getPassword()))
            {
                
                throw new FormValidationException("Mot de passe inconnut.");
            }        
        }
        else
        {
            throw new FormValidationException("Merci de saisir vôtre mot de passe.");
        }

    }

    /*
     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
     */
    private void setError(String champ, String message)
    {
        errors.put(champ, message);
    }

    /*
     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getFieldValue(HttpServletRequest request, String nomChamp)
    {
        String valeur = request.getParameter(nomChamp);
        if(valeur == null || valeur.trim().length() == 0)
        {
            return null;
        }
        else
        {
            return valeur;
        }
    }
}