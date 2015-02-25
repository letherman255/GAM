package fr.mcnanotech.main;

import fr.mcnanotech.beans.SystemParam;
import fr.mcnanotech.configloader.SettingsLoader;

public class SystemThread extends Thread
{
    public void run()
    {
        while(true)
        {
            SystemParam sp = new SystemParam();
            SettingsLoader sl = new SettingsLoader();
            sp = sl.loadParams(sp);
            System.out.println("le temp quotidien lue est "+sp.getDailyCredit()+" Le Compte administrateur est: "+sp.getAdmin());

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
}
