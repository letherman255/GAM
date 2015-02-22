package fr.mcnanotech.dao;

import fr.mcnanotech.beans.User;

public interface UserDao
{
    void create( User user ) throws DAOException;

    User find( String name ) throws DAOException;
}
