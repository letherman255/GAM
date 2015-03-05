package fr.mcnanotech.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.mcnanotech.beans.SystemInfo;
import fr.mcnanotech.beans.SystemUser;
import fr.mcnanotech.main.SystemThread;


@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/stop")
public class StopGame extends HttpServlet
{
    private static final String VIEW = "/pro/userinterface";
    private static final String ATT_IN_GAME = "isingame";
    private static final String SYSTEM = "system";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        HttpSession session = request.getSession();
        
        if(session.getAttribute(ATT_IN_GAME).equals("true"))
        {
            SystemInfo si = SystemThread.getInfo();
            String system = session.getAttribute(SYSTEM).toString();
            killUser(system,si);
            SystemThread.setInfo(si);

            
            
            session.setAttribute(ATT_IN_GAME, "false");
        }

        

        response.sendRedirect(VIEW);
    }

    private void killUser(String system, SystemInfo si)
    {
        if(system.equals("c1aUser"))
        {
            si.setC1aUser(null);
        }
        if(system.equals("c1bUser"))
        {
            si.setC1bUser(null);
        }
        if(system.equals("c1cUser"))
        {
            si.setC1cUser(null);
        }
        if(system.equals("c1dUser"))
        {
            si.setC1dUser(null);
        }
        //---------------------
        if(system.equals("c2aUser"))
        {
            si.setC2aUser(null);
        }
        if(system.equals("c2bUser"))
        {
            si.setC2bUser(null);
        }
        if(system.equals("c2cUser"))
        {
            si.setC2cUser(null);
        }
        if(system.equals("c2dUser"))
        {
            si.setC2dUser(null);
        }
        //---------------------
        if(system.equals("c3aUser"))
        {
            si.setC3aUser(null);
        }
        if(system.equals("c3bUser"))
        {
            si.setC3bUser(null);
        }
        if(system.equals("c3cUser"))
        {
            si.setC3cUser(null);
        }
        if(system.equals("c3dUser"))
        {
            si.setC3dUser(null);
        }
        //---------------------
        if(system.equals("c4aUser"))
        {
            si.setC4aUser(null);
        }
        if(system.equals("c4bUser"))
        {
            si.setC4bUser(null);
        }
        if(system.equals("c4cUser"))
        {
            si.setC4cUser(null);
        }
        if(system.equals("c4dUser"))
        {
            si.setC4dUser(null);
        }
        //---------------------
        if(system.equals("c5aUser"))
        {
            si.setC5aUser(null);
        }
        if(system.equals("c5bUser"))
        {
            si.setC5bUser(null);
        }
        if(system.equals("c5cUser"))
        {
            si.setC5cUser(null);
        }
        if(system.equals("c5dUser"))
        {
            si.setC5dUser(null);
        }
        //---------------------
        if(system.equals("c6aUser"))
        {
            si.setC6aUser(null);
        }
        if(system.equals("c6bUser"))
        {
            si.setC6bUser(null);
        }
        if(system.equals("c6cUser"))
        {
            si.setC6cUser(null);
        }
        if(system.equals("c6dUser"))
        {
            si.setC6dUser(null);
        }
        
    }
}
