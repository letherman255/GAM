package fr.mcnanotech.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.mcnanotech.beans.SystemParam;
import fr.mcnanotech.beans.User;
import fr.mcnanotech.configloader.SettingsLoader;
import fr.mcnanotech.dao.DAOFactory;
import fr.mcnanotech.dao.UserDao;
import fr.mcnanotech.forms.Connection;

@SuppressWarnings("serial")
@WebServlet("/connexion")
public class Connexion extends HttpServlet
{
    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VIEW_DEF = "/WEB-INF/connexion.jsp";
    public static final String VIEW_ADMIN = "/pro/administration/admininterface";
    public static final String VIEW_USER = "/pro/userinterface";

    private UserDao userDao;

    public void init() throws ServletException
    {
        /* Récupération d'une instance de notre DAO Utilisateur */
        this.userDao = ((DAOFactory)getServletContext().getAttribute(CONF_DAO_FACTORY)).getDaoUser();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        /* Affichage de la page de connexion */
        this.getServletContext().getRequestDispatcher(VIEW_DEF).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        /* Prï¿½paration de l'objet formulaire */
        Connection form = new Connection(userDao);

        /* Traitement de la requï¿½te et rï¿½cupï¿½ration du bean en rï¿½sultant */
        User user = form.connectUser(request);

        /* Rï¿½cupï¿½ration de la session depuis la requï¿½te */
        HttpSession session = request.getSession(false);

        SystemParam sp = new SystemParam();
        SettingsLoader sl = new SettingsLoader();
        sp = sl.loadParams(sp);

        /**
         * Si aucune erreur de validation n'a eu lieu, alors ajout du bean
         * Utilisateur ï¿½ la session, sinon suppression du bean de la session.
         */
        if(form.getErrors().isEmpty())
        {
            session.setAttribute(ATT_SESSION_USER, user);

            if(user.getUsername().equals(sp.getAdmin1()) || user.getUsername().equals(sp.getAdmin2()))
            {
                session.setAttribute("isAdmin", "true");

            }
            else
            {
                session.setAttribute("isAdmin", "false");
            }
        }
        else
        {
            session.setAttribute(ATT_SESSION_USER, null);
        }

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute(ATT_FORM, form);
        request.setAttribute(ATT_USER, user);
        if(form.getErrors().isEmpty())
        {
            if(session.getAttribute("isAdmin").equals("true"))
            {
                response.sendRedirect(VIEW_ADMIN);
            }
            else if(session.getAttribute("isAdmin").equals("false"))
            {
                response.sendRedirect(VIEW_USER);
            }
        }
        else
        {
            this.getServletContext().getRequestDispatcher(VIEW_DEF).forward(request, response);
        }

    }
}