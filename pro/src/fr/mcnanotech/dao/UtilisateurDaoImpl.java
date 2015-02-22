package fr.mcnanotech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import fr.mcnanotech.beans.User;
import static fr.mcnanotech.dao.DAOUtilitaire.*;

public class UtilisateurDaoImpl implements UtilisateurDao
{
    private DAOFactory daoFactory;

    UtilisateurDaoImpl(DAOFactory daoFactory)
    {
        this.daoFactory = daoFactory;
    }

    private static final String SQL_SELECT_PAR_EMAIL = "SELECT id, email, nom, mot_de_passe, date_inscription FROM Utilisateur WHERE email = ?";

    /* Impl�mentation de la m�thode d�finie dans l'interface UtilisateurDao */
    @Override
    public User trouver(String name) throws DAOException
    {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        User utilisateur = null;

        try
        {
            /* R�cup�ration d'une connexion depuis la Factory */
            connexion = daoFactory.getConnection();
            preparedStatement = initialisationRequetePreparee(connexion, SQL_SELECT_PAR_EMAIL, false, name);
            resultSet = preparedStatement.executeQuery();
            /* Parcours de la ligne de donn�es de l'�ventuel ResulSet retourn� */
            if(resultSet.next())
            {
                utilisateur = map(resultSet);
            }
        }
        catch(SQLException e)
        {
            throw new DAOException(e);
        }
        finally
        {
            fermeturesSilencieuses(resultSet, preparedStatement, connexion);
        }

        return utilisateur;
    }

    private static final String SQL_INSERT = "INSERT INTO Utilisateur (email, mot_de_passe, nom, date_inscription) VALUES (?, ?, ?, NOW())";

    /* Impl�mentation de la m�thode d�finie dans l'interface UtilisateurDao */
    @Override
    public void creer(User utilisateur) throws DAOException
    {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet valeursAutoGenerees = null;

        try
        {
            /* R�cup�ration d'une connexion depuis la Factory */
            connexion = daoFactory.getConnection();
            preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT, true, utilisateur.getUsername(), utilisateur.getPassword(), utilisateur.getMdlid(), utilisateur.getName(), utilisateur.getSurname());
            int statut = preparedStatement.executeUpdate();
            /* Analyse du statut retourn� par la requ�te d'insertion */
            if(statut == 0)
            {
                throw new DAOException("�chec de la cr�ation de l'utilisateur, aucune ligne ajout�e dans la table.");
            }
            /* R�cup�ration de l'id auto-g�n�r� par la requ�te d'insertion */
            valeursAutoGenerees = preparedStatement.getGeneratedKeys();
            if(valeursAutoGenerees.next())
            {
                /* Puis initialisation de la propri�t� id du bean Utilisateur avec sa valeur */
                utilisateur.setId(valeursAutoGenerees.getLong(1));
            }
            else
            {
                throw new DAOException("�chec de la cr�ation de l'utilisateur en base, aucun ID auto-g�n�r� retourn�.");
            }
        }
        catch(SQLException e)
        {
            throw new DAOException(e);
        }
        finally
        {
            fermeturesSilencieuses(valeursAutoGenerees, preparedStatement, connexion);
        }
    }

    /*
     * Simple m�thode utilitaire permettant de faire la correspondance (le
     * mapping) entre une ligne issue de la table des utilisateurs (un
     * ResultSet) et un bean Utilisateur.
     */
    private static User map(ResultSet resultSet) throws SQLException
    {
        User utilisateur = new User();
        utilisateur.setId(resultSet.getLong("id"));
        utilisateur.setUsername(resultSet.getString("username"));
        utilisateur.setPassword(resultSet.getString("password"));
        utilisateur.setMdlid(resultSet.getString("mdlid"));
        utilisateur.setName(resultSet.getString("name"));
        utilisateur.setSurname(resultSet.getString("surname"));
        return utilisateur;
    }
}
