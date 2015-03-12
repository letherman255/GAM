package fr.mcnanotech.main;

import java.util.Random;

import org.joda.time.DateTime;

import fr.mcnanotech.beans.SystemParam;
import fr.mcnanotech.beans.SystemUser;
import fr.mcnanotech.configloader.SettingsLoader;
import fr.mcnanotech.dao.DAOFactory;
import fr.mcnanotech.dao.UserDao;

public class SystemThread extends Thread
{

    static SystemStatus st = new SystemStatus();
    private UserDao userDao;

    public void run()
    {

        SystemParam systemparam = new SystemParam();
        SettingsLoader settingsloader = new SettingsLoader();

        systemparam = settingsloader.loadParams(systemparam);
        settingsloader.saveParamChanges(systemparam);
        this.userDao = DAOFactory.getInstance().getDaoUser();
        st.setDailyCredit(systemparam.getDailyCredit());

        while(true)
        {
            try
            {
                sleep(1000);
            }
            catch(InterruptedException e)
            {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            updateCredit(systemparam, userDao, settingsloader);
        }

    }

    private void updateCredit(SystemParam systemparam, UserDao userDao, SettingsLoader settingsloader)
    {

        DateTime today = new DateTime();
        if(!systemparam.getDate().equals(today.toString("dd-MMM-yyyy")))
        {

            userDao.setCredit(systemparam.getDailyCredit());
            systemparam.setDate(today.toString("dd-MMM-yyyy"));
            settingsloader.saveParamChanges(systemparam);
        }

    }

    public static SystemStatus getInfo()
    {
        return st;
    }

    public static void setInfo(SystemStatus systemstatus)
    {
        st = systemstatus;
    }

    public static SystemUser getUserInfo(String username)
    {
        SystemUser systemuser = new SystemUser();

        Random r = new Random();
        int Low = 10;
        int High = 100;
        int R = r.nextInt(High - Low) + Low;

        systemuser.setUsername(username);
        systemuser.setCreditPercentage(R);

        return systemuser;
    }
    
    private void updateInfo(SystemStatus st)
    {
        //------------------------------
        if(st.getC1aUser()!= null)
        {
            st.setC1a(true);
        }
        else
        {
            st.setC1a(false);
        }
        
        if(st.getC1bUser()!= null)
        {
            st.setC1b(true);
        }
        else
        {
            st.setC1b(false);
        }
        
        if(st.getC1cUser()!= null)
        {
            st.setC1c(true);
        }
        else
        {
            st.setC1c(false);
        }
        
        if(st.getC1dUser()!= null)
        {
            st.setC1d(true);
        }
        else
        {
            st.setC1d(false);
        }
        //-----------------------------
        if(st.getC2aUser()!= null)
        {
            st.setC2a(true);
        }
        else
        {
            st.setC2a(false);
        }
        
        if(st.getC2bUser()!= null)
        {
            st.setC2b(true);
        }
        else
        {
            st.setC2b(false);
        }
        
        if(st.getC2cUser()!= null)
        {
            st.setC2c(true);
        }
        else
        {
            st.setC2c(false);
        }
        
        if(st.getC2dUser()!= null)
        {
            st.setC2d(true);
        }
        else
        {
            st.setC2d(false);
        }
        //-----------------------------
        if(st.getC3aUser()!= null)
        {
            st.setC3a(true);
        }
        else
        {
            st.setC3a(false);
        }
        
        if(st.getC3bUser()!= null)
        {
            st.setC3b(true);
        }
        else
        {
            st.setC3b(false);
        }
        
        if(st.getC3cUser()!= null)
        {
            st.setC3c(true);
        }
        else
        {
            st.setC3c(false);
        }
        
        if(st.getC3dUser()!= null)
        {
            st.setC3d(true);
        }
        else
        {
            st.setC3d(false);
        }
        //-----------------------------
        if(st.getC4aUser()!= null)
        {
            st.setC4a(true);
        }
        else
        {
            st.setC4a(false);
        }
        
        if(st.getC4bUser()!= null)
        {
            st.setC4b(true);
        }
        else
        {
            st.setC4b(false);
        }
        
        if(st.getC4cUser()!= null)
        {
            st.setC4c(true);
        }
        else
        {
            st.setC4c(false);
        }
        
        if(st.getC4dUser()!= null)
        {
            st.setC4d(true);
        }
        else
        {
            st.setC4d(false);
        }
        //-----------------------------
        if(st.getC5aUser()!= null)
        {
            st.setC5a(true);
        }
        else
        {
            st.setC5a(false);
        }
        
        if(st.getC5bUser()!= null)
        {
            st.setC5b(true);
        }
        else
        {
            st.setC5b(false);
        }
        
        if(st.getC5cUser()!= null)
        {
            st.setC5c(true);
        }
        else
        {
            st.setC5c(false);
        }
        
        if(st.getC5dUser()!= null)
        {
            st.setC5d(true);
        }
        else
        {
            st.setC5d(false);
        }
        //-----------------------------
        if(st.getC6aUser()!= null)
        {
            st.setC6a(true);
        }
        else
        {
            st.setC6a(false);
        }
        
        if(st.getC6bUser()!= null)
        {
            st.setC6b(true);
        }
        else
        {
            st.setC6b(false);
        }
        
        if(st.getC6cUser()!= null)
        {
            st.setC6c(true);
        }
        else
        {
            st.setC6c(false);
        }
        
        if(st.getC6dUser()!= null)
        {
            st.setC6d(true);
        }
        else
        {
            st.setC6d(false);
        }
        //-----------------------------
        
    }
}
