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
//TODO Reactivate Filter
@WebFilter(urlPatterns = "/*")
public class RestrictionFilter implements Filter
{
    public static final String CONNECTION_ACCES = "/connexion";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";

    public void init(FilterConfig config) throws ServletException
    {}

    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException
    {
        /* Cast des objets request et response */
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)res;

        /* Non-filtrage des ressources statiques */
        String path = request.getRequestURI().substring(request.getContextPath().length());
        if(path.startsWith("/inc"))
        {
            chain.doFilter(request, response);
            return;
        }

        /* Rï¿½cupï¿½ration de la session depuis la requï¿½te */
        HttpSession session = request.getSession();

        /**
         * Si l'objet utilisateur n'existe pas dans la session en cours, alors
         * l'utilisateur n'est pas connecté.
         */
        if(session.getAttribute(ATT_SESSION_USER) == null)
        {
            /* Redirection vers la page publique */
            request.getRequestDispatcher(CONNECTION_ACCES).forward(request, response);
        }
        else
        {
            /* Affichage de la page restreinte */
            chain.doFilter(request, response);
        }
    }

    public void destroy()
    {}
}