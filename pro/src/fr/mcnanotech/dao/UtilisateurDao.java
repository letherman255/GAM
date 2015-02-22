package fr.mcnanotech.dao;

import fr.mcnanotech.beans.User;

public interface UtilisateurDao
{
    void creer( User utilisateur ) throws DAOException;

    User trouver( String name ) throws DAOException;
}
