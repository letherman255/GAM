package fr.mcnanotech.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import fr.mcnanotech.beans.User;

public final class ConnexionForm
{
    private static final String FIELD_USERNAME = "username";
    private static final String FIELD_PASSWORD = "password";

    private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();

    public String getResultat()
    {
        return resultat;
    }

    public Map<String, String> getErreurs()
    {
        return erreurs;
    }

    public User connecterUtilisateur(HttpServletRequest request)
    {
        /* Récupération des champs du formulaire */
        String username = getValeurChamp(request, FIELD_USERNAME);
        String password = getValeurChamp(request, FIELD_PASSWORD);

        User user = new User();


        try
        {
            verifyUsername(username);
        }
        catch(Exception e)
        {
            setErreur(FIELD_USERNAME, e.getMessage());
        }
        user.setUsername(username);

        /* Validation du champ mot de passe. */
        try
        {
            verifyPassword(password);
        }
        catch(Exception e)
        {
            setErreur(FIELD_PASSWORD, e.getMessage());
        }
        user.setPassword(password);

        /* Initialisation du résultat global de la validation. */
        if(erreurs.isEmpty())
        {
            resultat = "Succès de la connexion.";
        }
        else
        {
            resultat = "Échec de la connexion.";
        }

        return user;
    }

    private void verifyUsername(String username) throws Exception
    {
        if(username != null)
        {
            if(username.length() < 3)
            {
                throw new Exception("Vôtre nom d'utilisateur doit contenit au moins 3 caractères.");
            }
        }
        else
        {
            throw new Exception("Merci de saisir un nom d'utilisateur.");
        }
    }

    private void verifyPassword(String password) throws Exception
    {
        if(password != null)
        {
            if(password.length() < 5)
            {
                throw new Exception("Le mot de passe doit contenir au moins 5 caractères.");
            }
        }
        else
        {
            throw new Exception("Merci de saisir vôtre mot de passe.");
        }

    }

    /*
     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
     */
    private void setErreur(String champ, String message)
    {
        erreurs.put(champ, message);
    }

    /*
     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getValeurChamp(HttpServletRequest request, String nomChamp)
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