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
    private Map<String, String> errors = new HashMap<String, String>();

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
        String mdlid = getFieldValue(request, FIELD_MDLID);
        User user = new User();
        try
        {
            verifyMDLID(mdlid);
        }
        catch(FormValidationException e)
        {
            setErrors(FIELD_MDLID, e.getMessage());
        }
        if(errors.isEmpty())
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
    private void setErrors(String field, String message)
    {
        errors.put(field, message);
    }

    public Map<String, String> getErrors()
    {
        return errors;
    }

    /*
     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getFieldValue(HttpServletRequest request, String nomChamp)
    {
        String value = request.getParameter(nomChamp);
        if(value == null || value.trim().length() == 0)
        {
            return null;
        }
        else
        {
            return value;
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
