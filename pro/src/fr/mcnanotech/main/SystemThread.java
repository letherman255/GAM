package fr.mcnanotech.main;

import fr.mcnanotech.beans.SystemInfo;
import fr.mcnanotech.beans.SystemParam;
import fr.mcnanotech.configloader.SettingsLoader;

public class SystemThread extends Thread
{
    static SystemInfo si = new SystemInfo();

    public void run()
    {

        int i = 0;

        while(true)
        {
            i++;
            si.setC1time(i);
            si.setC1aUser("matthias");
            SystemParam sp = new SystemParam();
            SettingsLoader sl = new SettingsLoader();
            sp = sl.loadParams(sp);
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
}
