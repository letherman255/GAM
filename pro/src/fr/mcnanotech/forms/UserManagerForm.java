package fr.mcnanotech.forms;

import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import fr.mcnanotech.beans.DbContent;
import fr.mcnanotech.beans.SystemParam;
import fr.mcnanotech.beans.User;
import fr.mcnanotech.configloader.SettingsLoader;
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
        SystemParam systemparam = new SystemParam();
        SettingsLoader settingsloader = new SettingsLoader();

        systemparam = settingsloader.loadParams(systemparam);

        String mdlid = getFieldValue(request, FIELD_MDLID);
        User user = new User();
        try
        {
            verifyMDLID(mdlid);
            verifyAdmin(mdlid, systemparam);
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
     * Ajoute un message correspondant au champ sp�cifi� � la map des erreurs.
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
     * M�thode utilitaire qui retourne null si un champ est vide, et son contenu
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
                throw new FormValidationException("L'identifiant MDL doit �tre un nombre.");
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
            throw new FormValidationException("L'identifiant MDL doit �tre comprit entre 0 et 99999");
        }
    }

    private void verifyAdmin(String mdlid, SystemParam systemparam) throws FormValidationException
    {
        if(mdlid != null)
        {

            if(userDao.find(mdlid, "mdlid").getUsername().equals(systemparam.getAdmin1()) || userDao.find(mdlid, "mdlid").getUsername().equals(systemparam.getAdmin2()))
            {
                throw new FormValidationException("Il est impossible de supprimer un compte administrateur.");
            }

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
