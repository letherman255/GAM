package fr.mcnanotech.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import fr.mcnanotech.beans.SystemInfo;
import fr.mcnanotech.beans.SystemUser;
import fr.mcnanotech.dao.UserDao;
import fr.mcnanotech.main.SystemThread;

/**
 * @author Matthias
 *
 */
/**
 * @author Matthias
 */
public class UserInterfaceForm
{
    private static final String SYSTEM = "system";
    private static final String PERIHERAL = "peripheral";
    private static final String ATT_IN_GAME = "isingame";
    private static final String USERNAME = "username";
    private UserDao userDao;
    private String result;
    private Map<String, String> errors = new HashMap<String, String>();

    public UserInterfaceForm(UserDao userdao)
    {
        this.userDao = userdao;
    }

    public String getResult()
    {
        return result;
    }

    public Map<String, String> getErrors()
    {
        return errors;
    }

    /**
     * Verifys the system (available, enough credit, not null) and sets SystemUser if no exception is found.
     * An exception will cause the SystemUser to be deleted and the FormValidation Exception will be stored
     * in the Errors map.
     * 
     * @param request
     * @param userdao
     * @return systemUser
     */
    public SystemUser play(HttpServletRequest request, UserDao userdao)
    {
        HttpSession session = request.getSession();
        SystemInfo si = SystemThread.getInfo();

        String system = getFieldValue(request, SYSTEM);
        String peripheral = getFieldValue(request, PERIHERAL);

        SystemUser systemuser = new SystemUser();
        try
        {
            verifySystem(system, peripheral, si, session, userdao);
        }
        catch(FormValidationException e)
        {
            setError(SYSTEM, e.getMessage());
        }
        if(errors.isEmpty())
        {
            systemuser.setSystem(system);
            systemuser.setPeripheral(peripheral);

            setSystemController(si, system, peripheral, request.getSession().getAttribute(USERNAME).toString(), session);
            SystemThread.setInfo(si);
            session.setAttribute(ATT_IN_GAME, "true");
        }
        else
        {
            systemuser = null;
        }
        return systemuser;
    }

    public SystemUser getinfo(HttpServletRequest request, UserDao userDao)
    {

        HttpSession session = request.getSession();
        SystemInfo si = SystemThread.getInfo();
        String username = session.getAttribute(USERNAME).toString();
        String system = getFieldValue(request, SYSTEM);
        String peripheral = getFieldValue(request, PERIHERAL);
        int credit = userDao.find(session.getAttribute(USERNAME).toString(), USERNAME).getCredit();
        int creditPercentage = 0;
        int maxcredit = si.getDailyCredit();
        SystemUser systemuser = new SystemUser();

        creditPercentage = constrainp(100 * credit / maxcredit);

        systemuser.setUsername(username);
        systemuser.setSystem(system);
        systemuser.setPeripheral(peripheral);
        systemuser.setCreditLeft(credit);
        systemuser.setCreditPercentage(creditPercentage);

        return systemuser;
    }

    /**
     * Will test ifthe system is busy, if the system is not null and if the session is already using a system. If
     * false, will send out custom exceptions.
     * 
     * @param system
     * @param peripheral
     * @param si
     *            : SystemInfo
     * @param session
     *            : HttpSession
     * @throws FormValidationException
     */
    private void verifySystem(String system, String peripheral, SystemInfo si, HttpSession session, UserDao userDao) throws FormValidationException
    {
        if(system != null)
        {
            if(isBusy(si, system, peripheral))
            {
                throw new FormValidationException("Cette xbox est déja occupée.");
            }
        }
        else
        {
            throw new FormValidationException("Veuillez choisir une Xbox.");
        }
        if(session.getAttribute(ATT_IN_GAME).equals("true"))
        {
            throw new FormValidationException("Ce compte est déja en jeu.");
        }
        if(userDao.find(session.getAttribute(USERNAME).toString(), "username").getCredit() < 5)
        {
            throw new FormValidationException("Vous n'avez pas assez de crédit pour commencer à jouer !");
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

    private void setSystemController(SystemInfo si, String system, String peripheral, String username, HttpSession session)
    {
        if(system.equals("sys1"))
        {

            if(peripheral.equals("sysa"))
            {
                si.setC1aUser(username);
                session.setAttribute(SYSTEM, "c1aUser");
            }
            if(peripheral.equals("sysb"))
            {
                si.setC1bUser(username);
                session.setAttribute(SYSTEM, "c1bUser");
            }
            if(peripheral.equals("sysc"))
            {
                si.setC1cUser(username);
                session.setAttribute(SYSTEM, "c1aUser");
            }
            if(peripheral.equals("sysd"))
            {
                si.setC1dUser(username);
                session.setAttribute(SYSTEM, "c1dUser");
            }
        }
        if(system.equals("sys2"))
        {

            if(peripheral.equals("sysa"))
            {
                si.setC2aUser(username);
                session.setAttribute(SYSTEM, "c2aUser");
            }
            if(peripheral.equals("sysb"))
            {
                si.setC2bUser(username);
                session.setAttribute(SYSTEM, "c2bUser");
            }
            if(peripheral.equals("sysc"))
            {
                si.setC2cUser(username);
                session.setAttribute(SYSTEM, "c2cUser");
            }
            if(peripheral.equals("sysd"))
            {
                si.setC2dUser(username);
                session.setAttribute(SYSTEM, "c2dUser");
            }
        }
        if(system.equals("sys3"))
        {

            if(peripheral.equals("sysa"))
            {
                si.setC3aUser(username);
                session.setAttribute(SYSTEM, "c3aUser");
            }
            if(peripheral.equals("sysb"))
            {
                si.setC3bUser(username);
                session.setAttribute(SYSTEM, "c3bUser");
            }
            if(peripheral.equals("sysc"))
            {
                si.setC3cUser(username);
                session.setAttribute(SYSTEM, "c3cUser");
            }
            if(peripheral.equals("sysd"))
            {
                si.setC3dUser(username);
                session.setAttribute(SYSTEM, "c3dUser");
            }
        }
        if(system.equals("sys4"))
        {

            if(peripheral.equals("sysa"))
            {
                si.setC4aUser(username);
                session.setAttribute(SYSTEM, "c4aUser");
            }
            if(peripheral.equals("sysb"))
            {
                si.setC4bUser(username);
                session.setAttribute(SYSTEM, "c4bUser");
            }
            if(peripheral.equals("sysc"))
            {
                si.setC4cUser(username);
                session.setAttribute(SYSTEM, "c4cUser");
            }
            if(peripheral.equals("sysd"))
            {
                si.setC4dUser(username);
                session.setAttribute(SYSTEM, "c4dUser");
            }
        }
        if(system.equals("sys5"))
        {

            if(peripheral.equals("sysa"))
            {
                si.setC5aUser(username);
                session.setAttribute(SYSTEM, "c5aUser");
            }
            if(peripheral.equals("sysb"))
            {
                si.setC5bUser(username);
                session.setAttribute(SYSTEM, "c5bUser");
            }
            if(peripheral.equals("sysc"))
            {
                si.setC5cUser(username);
                session.setAttribute(SYSTEM, "c5cUser");
            }
            if(peripheral.equals("sysd"))
            {
                si.setC5dUser(username);
                session.setAttribute(SYSTEM, "c5dUser");
            }
        }
        if(system.equals("sys6"))
        {

            if(peripheral.equals("sysa"))
            {
                si.setC6aUser(username);
                session.setAttribute(SYSTEM, "c6aUser");
            }
            if(peripheral.equals("sysb"))
            {
                si.setC6bUser(username);
                session.setAttribute(SYSTEM, "c6bUser");
            }
            if(peripheral.equals("sysc"))
            {
                si.setC6cUser(username);
                session.setAttribute(SYSTEM, "c6cUser");
            }
            if(peripheral.equals("sysd"))
            {
                si.setC6dUser(username);
                session.setAttribute(SYSTEM, "c6dUser");
            }
        }

    }

    /**
     * Returns true if the given system is in use.
     * 
     * @param si
     *            :Object to look for.
     * @param system
     *            :System to look on.
     * @param peripheral
     *            :Peripheral to look on.
     * @return : True or false
     */
    private Boolean isBusy(SystemInfo si, String system, String peripheral)
    {
        if(system.equals("sys1"))
        {

            if(peripheral.equals("sysa"))
            {
                if(si.getC1aUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysb"))
            {
                if(si.getC1bUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysc"))
            {
                if(si.getC1cUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysd"))
            {
                if(si.getC1dUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        if(system.equals("sys2"))
        {

            if(peripheral.equals("sysa"))
            {
                if(si.getC2aUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysb"))
            {
                if(si.getC2bUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysc"))
            {
                if(si.getC2cUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysd"))
            {
                if(si.getC2dUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        if(system.equals("sys3"))
        {

            if(peripheral.equals("sysa"))
            {
                if(si.getC3aUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysb"))
            {
                if(si.getC3bUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysc"))
            {
                if(si.getC3cUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysd"))
            {
                if(si.getC3dUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        if(system.equals("sys4"))
        {

            if(peripheral.equals("sysa"))
            {
                if(si.getC4aUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysb"))
            {
                if(si.getC4bUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysc"))
            {
                if(si.getC4cUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysd"))
            {
                if(si.getC4dUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        if(system.equals("sys5"))
        {

            if(peripheral.equals("sysa"))
            {
                if(si.getC5aUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysb"))
            {
                if(si.getC5bUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysc"))
            {
                if(si.getC5cUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysd"))
            {
                if(si.getC5dUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        if(system.equals("sys6"))
        {

            if(peripheral.equals("sysa"))
            {
                if(si.getC6aUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysb"))
            {
                if(si.getC6bUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysc"))
            {
                if(si.getC6cUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            if(peripheral.equals("sysd"))
            {
                if(si.getC6dUser() != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        return null;
    }

    /**
     * constrain a value between 0-100
     * 
     * @param percentage
     * @return
     */
    private int constrainp(int percentage)
    {
        if(percentage < 0)
        {
            percentage = 0;
        }
        else if(percentage > 100)
        {
            percentage = 100;
        }
        return percentage;
    }
}
