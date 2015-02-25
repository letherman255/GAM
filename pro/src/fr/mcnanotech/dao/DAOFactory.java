package fr.mcnanotech.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DAOFactory
{

    private static final String PROPERTY_FILE = "/fr/mcnanotech/dao/dao.properties";
    private static final String PROPERTY_URL = "url";
    private static final String PROPERTY_DRIVER = "driver";
    private static final String PROPERTY_USERNAME = "nomutilisateur";
    private static final String PROPERTY_PASSWORD = "motdepasse";

    private String url;
    private String username;
    private String password;

    DAOFactory(String url, String username, String password)
    {
        this.url = url;
        this.username = username;
        this.password = password;
    }

    /*
     * Méthode chargée de récupérer les informations de connexion à la base de
     * données, charger le driver JDBC et retourner une instance de la Factory
     */
    public static DAOFactory getInstance() throws DAOConfigurationException
    {
        Properties property = new Properties(); // création d'un objet properties -> permet de gerer le fichier de config
        String url;
        String driver;
        String nomUtilisateur;
        String motDePasse;
        // --------------------------------Recherche et lecture du fichier de configuration------------------------------------
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        InputStream propertyFile = classLoader.getResourceAsStream(PROPERTY_FILE);

        if(propertyFile == null)
        {
            throw new DAOConfigurationException("Le fichier properties " + PROPERTY_FILE + " est introuvable.");
        }

        try
        {
            property.load(propertyFile);
            url = property.getProperty(PROPERTY_URL);
            driver = property.getProperty(PROPERTY_DRIVER);
            nomUtilisateur = property.getProperty(PROPERTY_USERNAME);
            motDePasse = property.getProperty(PROPERTY_PASSWORD);
        }
        catch(IOException e)
        {
            throw new DAOConfigurationException("Impossible de charger le fichier properties " + PROPERTY_FILE, e);
        }
        // ---------------------------------------chargement du driver JDBC--------------------------------------------------------
        try
        {
            Class.forName(driver);
        }
        catch(ClassNotFoundException e)
        {
            throw new DAOConfigurationException("Le driver est introuvable dans le classpath.", e);
        }
        // --------------------------------------Instance de DAO FACTORY-----------------------------------------------------------
        DAOFactory instance = new DAOFactory(url, nomUtilisateur, motDePasse);
        return instance;
    }

    /* Méthode chargée de fournir une connexion à la base de données */
    /* package */
    Connection getConnection() throws SQLException
    {
        return DriverManager.getConnection(url, username, password);
    }

    /*
     * Méthodes de récupération de l'implémentation des différents DAO (un seul
     * pour le moment)
     */
    public UserDao getDaoUser()
    {
        return new UserDaoImpl(this);
    }
    
}