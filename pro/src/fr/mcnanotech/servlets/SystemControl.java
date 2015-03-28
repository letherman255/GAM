package fr.mcnanotech.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.mcnanotech.beans.SystemParam;
import fr.mcnanotech.forms.SystemControlForm;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/administration/systemconfig")
public class SystemControl extends HttpServlet
{
    private static final String VIEW = "/WEB-INF/administration/system_config.jsp";
    private static final String ATT_FORM = "form";
    private static final String ATT_SP = "sp";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        SystemControlForm sc = new SystemControlForm();
        SystemParam sp = sc.saveParam(request);

        request.setAttribute(ATT_FORM, sc);
        request.setAttribute(ATT_SP, sp);
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
}
