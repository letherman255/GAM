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
        int i = 0;

        while(true)
        {
            i++;
            si.setC1time(i);
            si.setC1aUser("matthias");
            // System.out.println("le temp quotidien lue est "+sp.getDailyCredit()+" Le Compte administrateur 1 est: "+sp.getAdmin1()+" Le compte administrateur 2 est: "+sp.getAdmin2());

            try
            {
                sleep(5000);
            }
            catch(InterruptedException e)
            {
                e.printStackTrace();
            }

        }

    }

    public static SystemInfo getInfo()
    {
        return si;
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
