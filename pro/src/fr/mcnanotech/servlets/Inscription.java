package fr.mcnanotech.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.mcnanotech.beans.User;
import fr.mcnanotech.dao.DAOFactory;
import fr.mcnanotech.dao.UserDao;
import fr.mcnanotech.forms.RegisteringForm;

@SuppressWarnings("serial")
@WebServlet("/administration/inscription")
public class Inscription extends HttpServlet
{
    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
    public static final String VIEW = "/WEB-INF/administration/inscription.jsp";

    private UserDao userDao;

    public void init() throws ServletException
    {
        /* Récupération d'une instance de notre DAO Utilisateur */
        this.userDao = ((DAOFactory)getServletContext().getAttribute(CONF_DAO_FACTORY)).getDaoUser();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        /* Préparation de l'objet formulaire */
        RegisteringForm form = new RegisteringForm(userDao);
        /* Traitement de la requête et récupération du bean en résultant */
        User user = form.registerUser(request);

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute(ATT_FORM, form);
        request.setAttribute(ATT_USER, user);

        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
}