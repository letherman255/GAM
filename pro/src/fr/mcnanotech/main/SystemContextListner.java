package fr.mcnanotech.main;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import fr.mcnanotech.dao.DAOFactory;

public class SystemContextListner implements ServletContextListener
{
    private static final String ATT_DAO_FACTORY = "daofactory";
    private DAOFactory daoFactory;

    @Override
    public void contextInitialized(ServletContextEvent event)
    {
        /* Récupération du ServletContext lors du chargement de l'application */
        ServletContext servletContext = event.getServletContext();
        /* Instanciation de notre DAOFactory */
        this.daoFactory = DAOFactory.getInstance();
        /* Enregistrement dans un attribut ayant pour portée toute l'application */
        servletContext.setAttribute(ATT_DAO_FACTORY, this.daoFactory);
        
        SystemThread thread = new SystemThread();
        System.out.println("lancement du thread !");
        thread.start();
        System.out.println("Thread lance");

    }

    @Override
    public void contextDestroyed(ServletContextEvent event)
    {
        // TODO Auto-generated method stub

    }

}
