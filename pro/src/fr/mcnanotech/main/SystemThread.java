package fr.mcnanotech.main;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SystemThread extends Thread
{
    public void run()
    {
        while(true)
        {
            DateFormat df = new SimpleDateFormat("dd/MM/yy HH:MM:ss");
            Date date = new Date();
            //System.out.println(df.format(date));
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
