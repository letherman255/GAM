package fr.mcnanotech.main;

public class SystemThread extends Thread
{
    public void run()
    {
        while(true)
        {

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
