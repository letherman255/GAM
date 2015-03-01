package fr.mcnanotech.forms;

import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import fr.mcnanotech.beans.SystemParam;
import fr.mcnanotech.configloader.SettingsLoader;

public final class SystemConfigForm
{
    private static final String FIELD_CREDIT = "dailyCredit";
    private Map<String, String> errors = new HashMap<String, String>();

    public SystemParam saveParam(HttpServletRequest request)
    {
        String credit = getFieldValue(request, FIELD_CREDIT);
        SystemParam sp = new SystemParam();
        SettingsLoader sl = new SettingsLoader();

        try
        {
            verifyDailyCredit(credit);
        }
        catch(FormValidationException e)
        {
            setErrors(FIELD_CREDIT, e.getMessage());
        }
        if(errors.isEmpty())
        {
            sp = sl.loadParams(sp);   //fill system param bean with the config
            sp.setDailyCredit(Integer.parseInt(credit));

            sl.saveParamChanges(sp);  // save the file with the read config. If the file dosent exists, create one with the default variables.
            
        }
        else
        {
            sp = null;
        }
        return sp;

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

    private void verifyDailyCredit(String credit) throws FormValidationException
    {
        if(credit != null)
        {
            if(!isNumeric(credit))
            {
                throw new FormValidationException("Le crédit cotidien doit être un nombre.");
            }
        }
        else
        {
            throw new FormValidationException("Merci de saisir un crédit cotidien.");
        }
        if(credit.length() > 5)
        {
            throw new FormValidationException("Le crédit cotidien doit être comprit entre 0 et 99999");
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
