package fr.mcnanotech.main;

import java.io.IOException;

import org.joda.time.DateTime;

import com.lcdfx.io.Lcd;

import fr.mcnanotech.beans.SystemParam;
import fr.mcnanotech.beans.SystemUser;
import fr.mcnanotech.configloader.SettingsLoader;
import fr.mcnanotech.dao.DAOFactory;
import fr.mcnanotech.dao.UserDao;
import fr.mcnanotech.gpio.I2CTransfer;

public class SystemThread extends Thread
{

    /**
     * This is the division factor to determine the system time intervals in milliseconds
     * for example 1000 is a sec. 60 000 is a minute, 3 600 000 is an hour
     */
    private static final long TIME_BASE = 60000;
    static SystemStatus st = new SystemStatus();
    private UserDao userDao;

    public void run()
    {
        SystemParam systemparam = new SystemParam();
        SettingsLoader settingsloader = new SettingsLoader();

        systemparam = settingsloader.loadParams(systemparam);
        settingsloader.saveParamChanges(systemparam);

        try
        {
            I2CTransfer.initI2C(systemparam.getRaspberry());
            //TODO I2CTransfer.initLcd(Lcd.BACKLIGHT_BLUE);
        }
        catch(IOException e)
        {
            e.printStackTrace();
        }

        this.userDao = DAOFactory.getInstance().getDaoUser();
        st.setDailyCredit(systemparam.getDailyCredit());
        long t = (System.currentTimeMillis() / TIME_BASE);
        long tp = t + 1;
        
        
        I2CTransfer.writeName();

        while(true)
        {
            t = (System.currentTimeMillis() / TIME_BASE);
            if(t >= tp)
            {
                SystemClock.tick(st, userDao);
                I2CTransfer.updateLcd(st);
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
        for(int consoleId = 0; consoleId < 6; consoleId++)
        {
            GamingMachine machine = st.getMachine(consoleId);
            if(machine.getLastPlayersCount() != machine.getTotalPlayers())
            {
                // nombre de joueur a chang�
                machine.setLastPlayersCount(machine.getTotalPlayers());
            }
        }
    }
}
