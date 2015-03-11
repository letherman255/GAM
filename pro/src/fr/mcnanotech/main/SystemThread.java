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
}
