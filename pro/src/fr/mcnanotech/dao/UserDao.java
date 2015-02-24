package fr.mcnanotech.dao;


import java.util.ArrayList;

import fr.mcnanotech.beans.User;

public interface UserDao
{
    void create( User user ) throws DAOException;

    User find(String search, String msql ) throws DAOException;
    
    ArrayList<String[]>list() throws DAOException;
}
