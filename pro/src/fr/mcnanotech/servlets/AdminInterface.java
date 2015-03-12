package fr.mcnanotech.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.mcnanotech.main.SystemStatus;
import fr.mcnanotech.main.SystemThread;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/administration/admininterface")
public class AdminInterface extends HttpServlet
{
    private static final String VIEW = "/WEB-INF/administration/admin_interface.jsp";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        SystemStatus st = SystemThread.getInfo();
        request.setAttribute("st", st);
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
}