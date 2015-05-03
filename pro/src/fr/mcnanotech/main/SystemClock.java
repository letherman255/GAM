package fr.mcnanotech.main;

import fr.mcnanotech.dao.UserDao;

public class SystemClock
{
    public static int timer;
    public static int dtimer;

    /**
     * This method should be called every interval of time to time the system.
     * 
     * @param st
     * @param userDao
     */
    public static void fullTick(SystemStatus st, UserDao userDao)
    {
        timer++;
        for(int consoleId = 0; consoleId < 6; consoleId++)
        {
            GamingMachine machine = st.getMachine(consoleId);

            if(st.getCreditedPlayers(consoleId) > 0)
            {
                if(st.getTotalPlayerBy(consoleId) > 0 && (timer % st.getCreditedPlayers(consoleId)) == 0)
                {
                    if(machine.getTime() > 0)
                    {
                        int newTime = 0;
                        for(int controlerId = 0; controlerId < st.getTotalPlayerBy(consoleId); controlerId++)
                        {
                            Player player = machine.getPlayers(controlerId);
                            if(player.getTime() > 0)
                            {
                                player.setTime(player.getTime() - 1);
                            }
                            newTime += player.getTime();
                            System.out.println(controlerId + " " + player.getTime() + " " + newTime);
                            if(player.getTime() >= 0)
                            {
                                userDao.setUserCredit(player.getUserName(), player.getTime());
                            }
                        }
                        machine.setTime(newTime);
                        if(newTime <= 0)
                        {
                            kick(machine);
                        }
                    }
                    else
                    {
                        kick(machine);
                    }
                    System.out.println("joeuur avec crédit " + st.getCreditedPlayers(consoleId) + "temps machine :" + machine.getTime());
                }
            }
            else if(st.getTotalPlayerBy(consoleId) > 0)
            {
                System.out.println("cacahuete 2");
                kick(machine);
            }
        }
    }

    /**
     * This method should be called every interval of time to time the system.
     * it counts half of the credit
     * 
     * @param st
     * @param userDao
     */
    public static void halfTick(SystemStatus st, UserDao userDao)
    {
        timer++;
        dtimer++;

        for(int consoleId = 0; consoleId < 6; consoleId++)
        {
            GamingMachine machine = st.getMachine(consoleId);

            if(st.getCreditedPlayers(consoleId) > 0)
            {
                if(st.getTotalPlayerBy(consoleId) > 0 && (timer % st.getCreditedPlayers(consoleId)) == 0)
                {
                    if(dtimer % 2 == 0)
                    {
                        if(machine.getTime() > 0)
                        {
                            int newTime = 0;
                            for(int controlerId = 0; controlerId < st.getTotalPlayerBy(consoleId); controlerId++)
                            {
                                Player player = machine.getPlayers(controlerId);
                                if(player.getTime() > 0)
                                {
                                    player.setTime(player.getTime() - 1);
                                }
                                newTime += player.getTime();
                                System.out.println(controlerId + " " + player.getTime() + " " + newTime);
                                if(player.getTime() >= 0)
                                {
                                    userDao.setUserCredit(player.getUserName(), player.getTime());
                                }
                            }
                            machine.setTime(newTime);
                            if(newTime <= 0)
                            {
                                kick(machine);
                            }
                        }
                        else
                        {
                            kick(machine);
                        }
                        System.out.println("joeuur avec crédit " + st.getCreditedPlayers(consoleId) + "temps machine :" + machine.getTime());
                    }
                }
            }
            else if(st.getTotalPlayerBy(consoleId) > 0)
            {
                System.out.println("cacahuete 2");
                kick(machine);
            }
        }
    }

    private static void kick(GamingMachine machine)
    {
        System.out.println("console " + String.valueOf(machine.getId() + 1) + " désactivée");
        machine.kickAll();
        machine.setTime(0);
        System.out.println("Temps de la machine" + machine.getTime());
    }
}
