package fr.mcnanotech.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.mcnanotech.main.SystemStatus;
import fr.mcnanotech.main.SystemThread;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/stop")
public class StopGame extends HttpServlet
{
    private static final String VIEW = "/pro/userinterface";
    private static final String ATT_IN_GAME = "isingame";
    private static final String USERNAME = "username";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        HttpSession session = request.getSession();

        SystemStatus st = SystemThread.getInfo();
        st.killUserByUsername(session.getAttribute(USERNAME).toString());
        SystemThread.setInfo(st);

        session.setAttribute(ATT_IN_GAME, "false");

        response.sendRedirect(VIEW);
    }

}
