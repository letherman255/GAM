package fr.mcnanotech.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import fr.mcnanotech.beans.SystemUser;
import fr.mcnanotech.dao.UserDao;
import fr.mcnanotech.main.Player;
import fr.mcnanotech.main.SystemStatus;
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
        SystemStatus st = SystemThread.getInfo();

        int consoleId = toConsoleId(getFieldValue(request, SYSTEM));
        Player player = new Player(session.getAttribute(USERNAME).toString(), userDao.find(session.getAttribute(USERNAME).toString(), "username").getCredit());

        SystemUser systemuser = new SystemUser();

        for(Map.Entry<String, String> entry : errors.entrySet())
        {
            System.out.println(entry.getKey() + " : " + entry.getValue());
        }
        try
        {
            verifySystem(consoleId, st, session, userdao);
        }
        catch(FormValidationException e)
        {
            setError(SYSTEM, e.getMessage());
        }
        if(errors.isEmpty())
        {
            System.out.println(consoleId + " joueur " + player.getUserName());
            st.addUserTo(consoleId, player);
            SystemThread.setInfo(st);
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
        SystemStatus st = SystemThread.getInfo();
        String username = session.getAttribute(USERNAME).toString();
        int credit = userDao.find(session.getAttribute(USERNAME).toString(), USERNAME).getCredit();
        int creditPercentage = 0;
        int maxcredit = st.getDailyCredit();
        SystemUser systemuser = new SystemUser();

        creditPercentage = constrainp(100 * credit / maxcredit);

        systemuser.setSystem(getFieldValue(request, SYSTEM));
        systemuser.setUsername(username);
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
    private void verifySystem(int consoleId, SystemStatus st, HttpSession session, UserDao userDao) throws FormValidationException
    {
        if(consoleId != -1)
        {
            if(st.isFull(consoleId))
            {
                throw new FormValidationException("Cette xbox est déja pleine.");
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
        if(userDao.find(session.getAttribute(USERNAME).toString(), "username").getCredit() < 1)
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

    private int toConsoleId(String system)
    {
        if(system != null)
        {
            String str = system.replace("sys", "");
            return Integer.valueOf(str) - 1;
        }
        return -1;
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
