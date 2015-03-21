package fr.mcnanotech.dao;

import java.util.ArrayList;

import fr.mcnanotech.beans.User;

public interface UserDao
{
    void create(User user) throws DAOException;

    User find(String search, String msql) throws DAOException;

    void delete(String colum, String search) throws DAOException;

    void setCredit(int credit) throws DAOException;
    
    void setUserCredit(String username, int credit) throws DAOException;

    ArrayList<String[]> list() throws DAOException;
}
