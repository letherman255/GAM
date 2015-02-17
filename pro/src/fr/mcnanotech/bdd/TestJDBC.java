package fr.mcnanotech.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.sun.xml.internal.ws.api.message.Message;

public class TestJDBC
{
    /* La liste qui contiendra tous les rÃ©sultats de nos essais */
    private List<String> messages = new ArrayList<String>();

    public List<String> executerTests(HttpServletRequest request)
    {
        /* Chargement du driver JDBC pour MySQL */
        try
        {
            messages.add("Chargement du driver...");
            Class.forName("com.mysql.jdbc.Driver");
            messages.add("Driver chargé !");
        }
        catch(ClassNotFoundException e)
        {
            messages.add("Erreur lors du chargement : le driver n'a pas été trouvé dans le classpath ! <br/>" + e.getMessage());
        }

        /* Connexion Ã  la base de donnÃ©es */
        String url = "jdbc:mysql://localhost:3306/gam";
        String utilisateur = "matthias";
        String motDePasse = "sin";
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        try
        {
            messages.add("Connexion à  la base de données...");
            connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
            messages.add("Connexion réussie !");

            /* CrÃ©ation de l'objet gÃ©rant les requÃªtes */
            statement = connexion.createStatement();
            messages.add("Objet requète créé !");

            /* ExÃ©cution d'une requÃªte de lecture */
            resultat = statement.executeQuery("SELECT System_ID, Username, Password, MDL_ID, Name, Surname FROM users;");
            messages.add("Requète \"SELECT System_ID, Username, Password, MDL_ID, Name, Surname FROM users;\" effectuée !");

            /* RÃ©cupÃ©ration des donnÃ©es du rÃ©sultat de la requÃªte de lecture */
            while(resultat.next())
            {
                int System_ID = resultat.getInt("System_ID");
                String Username = resultat.getString("Username");
                String Password = resultat.getString("Password");
                int MDL_ID = resultat.getInt("MDL_ID");
                String Name = resultat.getString("Name");
                String Surname = resultat.getString("Surname");
                /* Formatage des donnÃ©es pour affichage dans la JSP finale. */
                messages.add("Données retournées par la requète : System_ID = " + System_ID + ", Username = " + Username + ", Password = " + Password + ", MDL_ID = " + MDL_ID + ", Name = " + Name.toUpperCase() + ", Surname = " + Surname);
            }
            /* Exécution d'une requête d'écriture */
            int statut = statement.executeUpdate("INSERT INTO users (Username, Password, MDL_ID, Name, Surname) VALUES ('victorien68', 'lavicto', '513', 'bauer', 'victorien');", Statement.RETURN_GENERATED_KEYS);

            /* Formatage pour affichage dans la JSP finale. */
            messages.add("Résultat de la requête d'insertion : " + statut + ".");
            resultat = statement.getGeneratedKeys();
            while(resultat.next())
            {
                messages.add("ID retourné lors de la requête d'insertion :" + resultat.getInt( 1 ) );
            }
        }
        catch(SQLException e)
        {
            messages.add("Erreur lors de la connexion : <br/>" + e.getMessage());
        }
        finally
        {
            messages.add("Fermeture de l'objet ResultSet.");
            if(resultat != null)
            {
                try
                {
                    resultat.close();
                }
                catch(SQLException ignore)
                {}
            }
            messages.add("Fermeture de l'objet Statement.");
            if(statement != null)
            {
                try
                {
                    statement.close();
                }
                catch(SQLException ignore)
                {}
            }
            messages.add("Fermeture de l'objet Connection.");
            if(connexion != null)
            {
                try
                {
                    connexion.close();
                }
                catch(SQLException ignore)
                {}
            }
        }

        return messages;
    }
}