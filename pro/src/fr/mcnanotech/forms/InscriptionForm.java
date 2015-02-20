package fr.mcnanotech.forms;

import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import fr.mcnanotech.beans.User;

public final class InscriptionForm
{
    private static final String FIELD_USERNAME = "username";
    private static final String FIELD_PASSWORD = "password";
    private static final String FIELD_CPASSWORD = "cpassword";
    private static final String FIELD_MDLID = "mdlid";
    private static final String FIELD_NAME = "name";
    private static final String FIELD_SURNAME = "surname";

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

    public User inscrireUtilisateur(HttpServletRequest request)
    {
        String username = getValeurChamp(request, FIELD_USERNAME);
        String password = getValeurChamp(request, FIELD_PASSWORD);
        String cpassword = getValeurChamp(request, FIELD_CPASSWORD);
        String confirmation = getValeurChamp(request, FIELD_CPASSWORD);
        String mdlid = getValeurChamp(request, FIELD_MDLID);
        String name = getValeurChamp(request, FIELD_NAME);
        String surname = getValeurChamp(request, FIELD_SURNAME);

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

        try
        {
            verifyPassword(password, cpassword);
        }
        catch(Exception e)
        {
            setErreur(FIELD_PASSWORD, e.getMessage());
            setErreur(FIELD_CPASSWORD, null);
        }
        user.setPassword(password);

        try
        {
            verifyMDLID(mdlid);
        }
        catch(Exception e)
        {
            setErreur(FIELD_MDLID, e.getMessage());
        }
        user.setMdlid(mdlid); 
        try
        {
            verifyName(name);
        }
        catch(Exception e)
        {
            setErreur(FIELD_NAME, e.getMessage());
        }
        user.setName(name);
        try
        {
            verifySurname(surname);
        }
        catch(Exception e)
        {
            setErreur(FIELD_SURNAME, e.getMessage());
        }
        user.setSurname(surname);

        if(erreurs.isEmpty())
        {
            resultat = "Succès de l'inscription.";
        }
        else
        {
            resultat = "Échec de l'inscription.";
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

    private void verifyPassword(String password, String cpassword) throws Exception
    {
        if(password != null && cpassword != null)
        {
            if(!password.equals(cpassword))
            {
                throw new Exception("Les mots de passe entrés sont différents, merci de les saisir à nouveau.");
            }
            else if(password.length() < 5)
            {
                throw new Exception("Les mots de passe doivent contenir au moins 5 caractères.");
            }
        }
        else
        {
            throw new Exception("Merci de saisir et confirmer votre mot de passe.");
        }
    }

    private void verifyMDLID(String mdlid) throws Exception
    {
        if(mdlid != null)
        {
            if(!isNumeric(mdlid))
            {
                throw new Exception("L'identifiant MDL doit être un nombre.");
            }
        }
        else
        {
            throw new Exception("Merci de saisir un identidiant MDL.");
        }
    }

    private void verifyName(String name) throws Exception
    {
        if(name != null)
        {
            if(name.length() < 3)
            {
                throw new Exception("Vôtre nom doit contenit au moins 3 caractères.");
            }
        }
        else
        {
            throw new Exception("Merci de saisir un nom.");
        }
    }

    private void verifySurname(String surname) throws Exception
    {
        if(surname != null)
        {
            if(surname.length() < 3)
            {
                throw new Exception("Vôtre prénom doit contenit au moins 3 caractères.");
            }
        }
        else
        {
            throw new Exception("Merci de saisir un prénom.");
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
            return valeur.trim();
        }
    }

    public static boolean isNumeric(String str)
    {
        NumberFormat formatter = NumberFormat.getInstance();
        ParsePosition pos = new ParsePosition(0);
        formatter.parse(str, pos);
        return str.length() == pos.getIndex();
    }
}
