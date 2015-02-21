package fr.mcnanotech.dao;
import static fr.mcnanotech.dao.DAOUtil.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import fr.mcnanotech.beans.User;

public class UserDaoImpl implements UserDao
{
    private DAOFactory daoFactory;

    public UserDaoImpl(DAOFactory daoFactory)
    {
        this.daoFactory = daoFactory;
    }

    private static final String SQL_SELECT_PAR_EMAIL = "SELECT id, email, nom, mot_de_passe, date_inscription FROM Utilisateur WHERE email = ?";

    @Override
    public User find(String username) throws DAOException
    {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        User user = null;

        try
        {
            /* Récupération d'une connexion depuis la Factory */
            connexion = daoFactory.getConnection();
            preparedStatement = daoFactory.initialisationRequetePreparee(connexion, SQL_SELECT_PAR_EMAIL, false);
            resultSet = preparedStatement.executeQuery();
            /* Parcours de la ligne de données de l'éventuel ResulSet retourné */
            if(resultSet.next())
            {
                user = map(resultSet);
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

        return user;
    }

    @Override
    public void create(User user) throws DAOException
    {

    }

    /*
     * Simple méthode utilitaire permettant de faire la correspondance (le
     * mapping) entre une ligne issue de la table des utilisateurs (un
     * ResultSet) et un bean Utilisateur.
     */
    private static User map(ResultSet resultSet) throws SQLException
    {
        User user = new User();
        user.setId(resultSet.getLong("id"));
        user.setUsername(resultSet.getString("username"));
        user.setPassword(resultSet.getString("password"));
        user.setMdlid(resultSet.getString("mdlid"));
        user.setName(resultSet.getString("name"));
        user.setSurname(resultSet.getString("surname"));
        return user;
    }

}
