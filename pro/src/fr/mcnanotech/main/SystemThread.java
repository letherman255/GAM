package fr.mcnanotech.main;

import java.util.Random;

import fr.mcnanotech.beans.SystemInfo;
import fr.mcnanotech.beans.SystemParam;
import fr.mcnanotech.beans.SystemUser;
import fr.mcnanotech.configloader.SettingsLoader;

public class SystemThread extends Thread
{
    static SystemInfo si = new SystemInfo();

    public void run()
    {
        SystemParam systemparam = new SystemParam();
        SettingsLoader settingsloader = new SettingsLoader();  
        
        systemparam = settingsloader.loadParams(systemparam);   //fill system param bean with the config
        settingsloader.saveParamChanges(systemparam);  // save the file with the read config. If the file dosent exists, create one with the default variables.
        
        si.setDailyCredit(systemparam.getDailyCredit());
        

        while(true)
        {

        }

    }

    public static SystemInfo getInfo()
    {
        return si;
    }
    
    public static void setInfo(SystemInfo systeminfo)
    {
        si = systeminfo;
    }
    
    public static SystemUser getUserInfo(String username)
    {
        SystemUser systemuser = new SystemUser();
        
        Random r = new Random();
        int Low = 10;
        int High = 100;
        int R = r.nextInt(High-Low) + Low;
        
        systemuser.setUsername(username);
        systemuser.setCreditPercentage(R);
        
        return systemuser;
    }
}
