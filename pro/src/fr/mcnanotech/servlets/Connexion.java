package fr.mcnanotech.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.mcnanotech.beans.User;
import fr.mcnanotech.dao.DAOFactory;
import fr.mcnanotech.dao.UserDao;
import fr.mcnanotech.forms.ConnexionForm;

@SuppressWarnings("serial")
@WebServlet("/connexion")
public class Connexion extends HttpServlet {
    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE              = "/WEB-INF/connexion.jsp";
    
    private UserDao     userDao;
    
    public void init() throws ServletException {
        /* Récupération d'une instance de notre DAO Utilisateur */
        this.userDao = ( (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY ) ).getUtilisateurDao();
    }

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Affichage de la page de connexion */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Prï¿½paration de l'objet formulaire */
        ConnexionForm form = new ConnexionForm(userDao);

        /* Traitement de la requï¿½te et rï¿½cupï¿½ration du bean en rï¿½sultant */
        User utilisateur = form.connecterUtilisateur( request );

        /* Rï¿½cupï¿½ration de la session depuis la requï¿½te */
        HttpSession session = request.getSession();

        /**
         * Si aucune erreur de validation n'a eu lieu, alors ajout du bean
         * Utilisateur ï¿½ la session, sinon suppression du bean de la session.
         */
        if ( form.getErreurs().isEmpty() ) {
            session.setAttribute( ATT_SESSION_USER, utilisateur );
        } else {
            session.setAttribute( ATT_SESSION_USER, null );
        }

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, utilisateur );
 

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
}