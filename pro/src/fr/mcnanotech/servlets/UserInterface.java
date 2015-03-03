package fr.mcnanotech.servlets;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import fr.mcnanotech.beans.SystemUser;
import fr.mcnanotech.forms.UserInterfaceForm;
import fr.mcnanotech.main.SystemThread;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/userinterface")
public class UserInterface extends HttpServlet
{
    public static final String VIEW = "/WEB-INF/user_interface.jsp";
    private static final String ATT_FORM = "userinterface";
    private static final String ATT_SYSTEMUSER = "systemuser";
    private static final String INF_SYSTEMUSER = "systemuserinf";
    private static final String ATT_IN_GAME = "isingame";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        SystemUser systemuserinf = SystemThread.getUserInfo(request.getSession().getAttribute("username").toString());
        request.setAttribute(INF_SYSTEMUSER, systemuserinf);

        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        UserInterfaceForm userinterfaceform = new UserInterfaceForm();
        SystemUser systemuser = userinterfaceform.play(request);
        HttpSession session = request.getSession();
        SystemUser systemuserinf = SystemThread.getUserInfo(session.getAttribute("username").toString());
        session.setAttribute(ATT_IN_GAME, "true");

       
        request.setAttribute(ATT_FORM, userinterfaceform);
        request.setAttribute(ATT_SYSTEMUSER, systemuser);
        request.setAttribute(INF_SYSTEMUSER, systemuserinf);

        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
}
