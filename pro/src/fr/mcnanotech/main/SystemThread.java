package fr.mcnanotech.main;

import org.joda.time.DateTime;

import fr.mcnanotech.beans.SystemParam;
import fr.mcnanotech.beans.SystemUser;
import fr.mcnanotech.configloader.SettingsLoader;
import fr.mcnanotech.dao.DAOFactory;
import fr.mcnanotech.dao.UserDao;

public class SystemThread extends Thread
{

    /**
     * This is the division factor to determine the system time intervals in milliseconds
     * for example 1000 is a sec. 60 000 is a minute, 3 600 000 is an hour
     */
    private static final long TIME_BASE = 1000;
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
        long t = (System.currentTimeMillis() / TIME_BASE);
        long tp = t + 1;

        while(true)
        {
            t = (System.currentTimeMillis() / TIME_BASE);

            if(t >= tp)
            { 
                SystemClock.tick(st, userDao);
                tp = t + 1;
            }

            updateCredit(systemparam, userDao, settingsloader);
            updateInfo(st);
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
        systemuser.setUsername(username);

        return systemuser;
    }

    private void updateInfo(SystemStatus st)
    {
 
        if(st.getC1aUser() != null && !st.isC1a())
        {
            System.out.println("console 1a actiée");
            st.setC1a(true);
            st.setC1aTime(userDao.find(st.getC1aUser(), "username").getCredit());
            st.setC1time(st.getC1aTime() + st.getC1bTime() + st.getC1cTime() + st.getC1dTime());
            st.setC1usage(st.getC1usage()+1);
        }
        else if(st.getC1aUser() == null && st.isC1a())
        {
            System.out.println("console 1a désactivée");
            st.setC1a(false);
            st.setC1time(st.getC1bTime() + st.getC1cTime() + st.getC1dTime());
            st.setC1usage(st.getC1usage()-1);
        }
        

        if(st.getC1bUser() != null && !st.isC1b())
        {
            System.out.println("console 1b actiée");
            st.setC1b(true);
            st.setC1bTime(userDao.find(st.getC1bUser(), "username").getCredit());
            st.setC1time(st.getC1aTime() + st.getC1bTime() + st.getC1cTime() + st.getC1dTime());
            st.setC1usage(st.getC1usage()+1);
        }
        else if(st.getC1bUser() == null && st.isC1b())
        {
            System.out.println("console 1b désactivée");
            st.setC1b(false);
            st.setC1time(st.getC1aTime() + st.getC1cTime() + st.getC1dTime());
            st.setC1usage(st.getC1usage()-1);
        }
        

        if(st.getC1cUser() != null && !st.isC1c())
        {
            System.out.println("console 1c actiée");
            st.setC1c(true);
            st.setC1cTime(userDao.find(st.getC1cUser(), "username").getCredit());
            st.setC1time(st.getC1aTime() + st.getC1bTime() + st.getC1cTime() + st.getC1dTime());
            st.setC1usage(st.getC1usage()+1);
        }
        else if(st.getC1cUser() == null && st.isC1c())
        {
            System.out.println("console 1c désactivée");
            st.setC1c(false);
            st.setC1time(st.getC1bTime() + st.getC1aTime() + st.getC1dTime());
            st.setC1usage(st.getC1usage()-1);
        }
        
        if(st.getC1dUser() != null && !st.isC1d())
        {
            System.out.println("console 1d actiée");
            st.setC1d(true);
            st.setC1dTime(userDao.find(st.getC1dUser(), "username").getCredit());
            st.setC1time(st.getC1aTime() + st.getC1bTime() + st.getC1cTime() + st.getC1dTime());
            st.setC1usage(st.getC1usage()+1);
        }
        else if(st.getC1dUser() == null && st.isC1d())
        {
            System.out.println("console 1d désactivée");
            st.setC1d(false);
            st.setC1time(st.getC1bTime() + st.getC1cTime() + st.getC1aTime());
            st.setC1usage(st.getC1usage()-1);
        }


        

    }
}
