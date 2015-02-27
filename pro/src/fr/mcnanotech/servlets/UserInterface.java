package fr.mcnanotech.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/userinterface")
public class UserInterface extends HttpServlet
{
    public static final String VIEW="/WEB-INF/user_interface.jsp";
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        /* R�cup�ration de la session depuis la requ�te */
        HttpSession session = request.getSession();
        
        System.out.println(session.getAttribute("username"));
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
}
