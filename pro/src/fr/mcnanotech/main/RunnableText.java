package fr.mcnanotech.main;

public class RunnableText implements Runnable
{

    @Override
    public void run()
    {
        while(true)
        {
            System.out.println("lolol");
            try
            {
                Thread.sleep(5000);
            }
            catch(InterruptedException e)
            {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        
    }

}
