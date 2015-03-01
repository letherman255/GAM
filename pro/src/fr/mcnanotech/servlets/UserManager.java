package fr.mcnanotech.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.mcnanotech.beans.DbContent;
import fr.mcnanotech.beans.User;
import fr.mcnanotech.dao.DAOFactory;
import fr.mcnanotech.dao.UserDao;
import fr.mcnanotech.forms.UserManagerForm;

@SuppressWarnings("serial")
@WebServlet("/administration/usermanager")
public class UserManager extends HttpServlet
{
    public static final String VIEW = "/WEB-INF/administration/user_manager.jsp";
    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
    public static final String ARRAY = "array";

    private UserDao userDao;

    public void init() throws ServletException
    {
        /* Récupération d'une instance de notre DAO Utilisateur */
        this.userDao = ((DAOFactory)getServletContext().getAttribute(CONF_DAO_FACTORY)).getDaoUser();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        UserManagerForm umf = new UserManagerForm(userDao);
        DbContent content = umf.ListUsers(request);
        ArrayList<String[]> tableContent = content.getTableContent();

        request.setAttribute(ARRAY, tableContent);
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        UserManagerForm umf = new UserManagerForm(userDao);
        User user = umf.deleteUser(request);

        DbContent content = umf.ListUsers(request);
        ArrayList<String[]> tableContent = content.getTableContent();

        request.setAttribute(ATT_FORM, umf);
        request.setAttribute(ATT_USER, user);
        request.setAttribute(ARRAY, tableContent);
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
}
