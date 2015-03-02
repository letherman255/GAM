package fr.mcnanotech.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import fr.mcnanotech.beans.SystemUser;

public class UserInterfaceForm
{
    private static final String SYSTEM = "system";
    private static final String PERIHERAL = "peripheral";
    private String result;
    private Map<String, String> errors = new HashMap<String, String>();

    public String getResult()
    {
        return result;
    }

    public Map<String, String> getErrors()
    {
        return errors;
    }

    public SystemUser play(HttpServletRequest request)
    {
        String system = getFieldValue(request, SYSTEM);
        String peripheral = getFieldValue(request, PERIHERAL);
        

        SystemUser systemuser = new SystemUser();
        try
        {
            verifySystem(system);
        }
        catch(FormValidationException e)
        {
            setError(SYSTEM, e.getMessage());
        }

        try
        {
            verifyPeripheral(peripheral);
        }
        catch(FormValidationException e)
        {
            setError(PERIHERAL, e.getMessage());
        }

        if(errors.isEmpty())
        {
            systemuser.setSystem(system);
            systemuser.setPeripheral(peripheral);
        }
        else
        {
            systemuser = null;
        }
        return systemuser;
    }

    private void verifyPeripheral(String peripheral) throws FormValidationException
    {
        if(peripheral == null)
        {
            throw new FormValidationException("Veuillez choisir une manette.");
        }

    }

    private void verifySystem(String system2) throws FormValidationException
    {
        if(system2 == null)
        {
            throw new FormValidationException("Veuillez choisir une Xbox.");
        }

    }

    /*
     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
     */
    private void setError(String field, String message)
    {
        errors.put(field, message);
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
}
