package fr.mcnanotech.forms;

import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import fr.mcnanotech.beans.DbContent;
import fr.mcnanotech.beans.User;
import fr.mcnanotech.dao.UserDao;

public class UserManagerForm
{
    private static final String FIELD_MDLID = "mdlid";
    private UserDao userDao;
    private Map<String, String> erreurs = new HashMap<String, String>();

    public UserManagerForm(UserDao utilisateurDao)
    {
        this.userDao = utilisateurDao;
    }

    public DbContent ListUsers(HttpServletRequest request)
    {
        DbContent dbc = new DbContent();
        dbc.setTableContent(userDao.list());
        return dbc;
    }

    public User deleteUser(HttpServletRequest request)
    {
        String mdlid = getValeurChamp(request, FIELD_MDLID);
        User user = new User();
        try
        {
            verifyMDLID(mdlid);
        }
        catch(FormValidationException e)
        {
            setErreur(FIELD_MDLID, e.getMessage());
        }
        if(erreurs.isEmpty())
        {
            userDao.delete("mdlid", mdlid);
            user.setMdlid(mdlid);
        }
        else
        {
            user = null;
        }

        return user;

    }

    /*
     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
     */
    private void setErreur(String champ, String message)
    {
        erreurs.put(champ, message);
    }

    public Map<String, String> getErreurs()
    {
        return erreurs;
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

    private void verifyMDLID(String mdlid) throws FormValidationException
    {
        if(mdlid != null)
        {
            if(!isNumeric(mdlid))
            {
                throw new FormValidationException("L'identifiant MDL doit être un nombre.");
            }
            else if(userDao.find(mdlid, "mdlid") == null)
            {
                throw new FormValidationException("Cet identitifiant MDL n'existe pas.");
            }
        }
        else
        {
            throw new FormValidationException("Merci de saisir un identidiant MDL.");
        }
        if(mdlid.length() > 5)
        {
            throw new FormValidationException("L'identifiant MDL doit être comprit entre 0 et 99999");
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
