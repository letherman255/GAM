package fr.mcnanotech.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.mcnanotech.beans.SystemUser;
import fr.mcnanotech.dao.DAOFactory;
import fr.mcnanotech.dao.UserDao;
import fr.mcnanotech.forms.UserInterfaceForm;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/userinterface")
public class UserInterface extends HttpServlet
{
    public static final String VIEW = "/WEB-INF/user_interface.jsp";
    private static final String ATT_FORM = "form";
    private static final String ATT_SYSTEMUSER = "systemuser";
    private static final String INF_SYSTEMUSER = "systemuserinf";
    public static final String CONF_DAO_FACTORY = "daofactory";
    UserInterfaceForm userinterfaceform;

    private UserDao userDao;

    public void init() throws ServletException
    {
        /* Récupération d'une instance de notre DAO Utilisateur */
        this.userDao = ((DAOFactory)getServletContext().getAttribute(CONF_DAO_FACTORY)).getDaoUser();
        userinterfaceform = new UserInterfaceForm(userDao);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        SystemUser systemuserinf = userinterfaceform.getinfo(request, userDao);
        request.setAttribute(INF_SYSTEMUSER, systemuserinf);

        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        SystemUser systemuser = userinterfaceform.play(request, userDao);

        SystemUser systemuserinf = userinterfaceform.getinfo(request, userDao);

        request.setAttribute(ATT_FORM, userinterfaceform);
        request.setAttribute(ATT_SYSTEMUSER, systemuser);
        request.setAttribute(INF_SYSTEMUSER, systemuserinf);
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
        userinterfaceform.getErrors().clear();
    }
}
