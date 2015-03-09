package fr.mcnanotech.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns = "/administration/*")
public class AdministrationFilter implements Filter
{
    public static final String PUBLIC_ACCES = "/Forbidden.html";
    public static final String IS_ADMIN = "isAdmin";

    @Override
    public void init(FilterConfig config) throws ServletException
    {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException
    {

        /* Cast des objets request et response */
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)res;

        /* R�cup�ration de la session depuis la requ�te */
        
        HttpSession session = request.getSession(false);


        if(session != null)
        {

            if(session.getAttribute(IS_ADMIN).equals("true"))
            {
                /* Affichage de la page restreinte */
                chain.doFilter(request, response);

            }
            else
            {

                /* Redirection vers la page publique */
                response.sendRedirect(request.getContextPath() + PUBLIC_ACCES);
            }
        }
        else
        {
            response.sendRedirect(request.getContextPath()+ PUBLIC_ACCES);
        }
    }

    @Override
    public void destroy()
    {

    }

}
