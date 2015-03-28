package fr.mcnanotech.servlets.bash;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/administration/shutdown")
@SuppressWarnings("serial")
public class Shutdown extends HttpServlet
{
    private static final String VIEW = "/WEB-INF/administration/SystemProcessing.jsp";
    private static final String ATT_MESSAGES = "messages";
    private static final String FIELD_ERROR = "errors";
    private static final String FIELD_TYPE = "type";
    private Map<String, String> messages = new HashMap<String, String>();
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        Runtime runtime = Runtime.getRuntime();
        try
        {
            System.out.println("arret du raspberry pi");
             runtime.exec(new String[] {"cmd", "/c", "start", "C:\\Users\\Matthias\\Desktop\\ddd.mp3"});
             messages.put(FIELD_TYPE, "shutdown");
        }
        catch(IOException e)
        {
            messages.put(FIELD_ERROR, e.getMessage());
            e.printStackTrace();
        }
        request.setAttribute(ATT_MESSAGES, messages);
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
}
