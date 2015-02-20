package fr.mcnanotech.main;

public class Text extends Thread
{
    public void run()
    {
        while(true)
        {
            System.out.println(System.currentTimeMillis());
            try
            {
                sleep(5000);
            }
            catch(InterruptedException e)
            {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        
    }

}
