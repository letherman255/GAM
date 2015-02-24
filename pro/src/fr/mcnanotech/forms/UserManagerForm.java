package fr.mcnanotech.forms;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import fr.mcnanotech.beans.DbContent;
import fr.mcnanotech.beans.User;
import fr.mcnanotech.dao.UserDao;

public class UserManagerForm
{
    private UserDao userDao;
    public UserManagerForm(UserDao utilisateurDao)
    {
        this.userDao = utilisateurDao;
    }

    public DbContent ListUsers(HttpServletRequest request)
    {
        DbContent dbc= new DbContent();
        dbc.setTableContent(userDao.list());
        return dbc;
    }

}
