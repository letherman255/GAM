package fr.mcnanotech.main;

import fr.mcnanotech.dao.UserDao;

public class SystemClock
{
    public static int timer;

    /**
     * This method should be called every interval of time to time the system.
     * 
     * @param st
     * @param userDao
     */
    public static void tick(SystemStatus st, UserDao userDao)
    {
        System.out.println("je suis en train de tourner !");
        timer++;
        for(int consoleId = 0; consoleId < 6; consoleId++)
        {
            System.out.println(consoleId + "  " + timer + "   " + st.getTotalPlayerBy(consoleId));
            if(st.getTotalPlayerBy(consoleId) > 0 && timer % st.getTotalPlayerBy(consoleId) == 0)
            {
                System.out.println(consoleId + st.getTotalPlayerBy(consoleId));
                GamingMachine machine = st.getMachine(consoleId);
                if(machine.getTime() > 1)
                {
                    int newTime = 0;
                    for(int controlerId = 0; controlerId < st.getTotalPlayerBy(consoleId); controlerId++)
                    {
                        Player player = machine.getPlayers(controlerId);
                        player.setTime(player.getTime() - 1);
                        newTime += player.getTime();
                        if(player.getTime() >= 0)
                        {
                            userDao.setUserCredit(player.getUserName(), player.getTime());
                        }
                    }
                    machine.setTime(newTime);
                }
                else
                {
                    System.out.println("console " +  String.valueOf(consoleId + 1) + " désactivée");
                    machine.kickAll();
                    machine.setTime(0);
                    // éteindre
                }
            }
        }
    }
}
