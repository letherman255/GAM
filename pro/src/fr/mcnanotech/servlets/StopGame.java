package fr.mcnanotech.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.mcnanotech.beans.SystemUser;
import fr.mcnanotech.main.SystemThread;


@WebServlet(urlPatterns = "/stop")
public class StopGame extends HttpServlet
{
    private static final String VIEW = "/WEB-INF/user_interface.jsp";
    private static final String INF_SYSTEMUSER = "systemuserinf";
    private static final String ATT_IN_GAME = "isingame";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        System.out.println("je suis executé");
        SystemUser systemuserinf = SystemThread.getUserInfo(request.getSession().getAttribute("username").toString());
        request.setAttribute(INF_SYSTEMUSER, systemuserinf);
        HttpSession session = request.getSession();

        session.setAttribute(ATT_IN_GAME, "false");

        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
}
