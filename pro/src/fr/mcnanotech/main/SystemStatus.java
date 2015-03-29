package fr.mcnanotech.main;

public class SystemStatus
{
    private GamingMachine[] gamingMachine = new GamingMachine[] {new GamingMachine(0, 4), new GamingMachine(1, 4), new GamingMachine(2, 4), new GamingMachine(3, 4), new GamingMachine(4, 4), new GamingMachine(5, 4)};

    private int systemUsage = 0;
    private int dailyCredit = 0;
    private int nextSystem = 0;

    public GamingMachine getMachine(int consoleId)
    {
        if(consoleId >= 0 && consoleId < this.gamingMachine.length)
        {
            return this.gamingMachine[consoleId];
        }
        return null;
    }

    /**
     * Set the given system's user.
     * 
     * @param int
     *        consoleId
     * @param Player
     *            player
     */
    public void addUserTo(int consoleId, Player player)
    {
        if(consoleId >= 0 && consoleId < this.gamingMachine.length)
        {
            this.gamingMachine[consoleId].addPlayer(player);
        }
        else
        {
            System.err.println("console invalid");
        }
    }

    /**
     * return true if the console is full (4 players per xbox)
     * 
     * @param consoleId
     * @return
     */
    public boolean isFull(int consoleId)
    {
        if(consoleId >= 0 && consoleId < this.gamingMachine.length)
        {
            return this.gamingMachine[consoleId].getTotalPlayers() >= this.gamingMachine[consoleId].getMaxPlayers();
        }
        return true;
    }

    public int getTotalPlayerBy(int consoleId)
    {
        return this.gamingMachine[consoleId].getTotalPlayers();
    }
    
    public int getCreditedPlayers(int consoleId)
    {
        return this.gamingMachine[consoleId].getCreditedPlayers();
    }

    /**
     * Sets the user of the given system to null.
     * 
     * @param system
     *            String ex 1a; 1b; 1b; 1c; 1d; 2a ...
     */
    public boolean killUserBySystem(int consoleId, int controlerId)
    {
        if(consoleId == -1)
        {
            return false;
        }
        return this.gamingMachine[consoleId].removePlayer(controlerId);
    }

    /**
     * Set the systems with this user to null.
     * 
     * @param String
     *            username
     */
    public boolean killUserByUsername(String username)
    {
        for(GamingMachine gaming : gamingMachine)
        {
            if(gaming.removePlayerByName(username))
            {
                return true;
            }
        }
        return false;
    }

    /**
     * Returns true if a given user is already in game.
     * 
     * @param String
     *            username
     * @return Boolean
     */
    public boolean isAlreadyInGame(String username)
    {
        for(GamingMachine gaming : gamingMachine)
        {
            if(gaming.isOnThisMachine(username))
            {
                return true;
            }
        }
        return false;
    }

    public Player getPlayer(int consoleId, int index)
    {
        if(consoleId != -1 && index < this.gamingMachine[consoleId].getTotalPlayers())
        {
            return this.gamingMachine[consoleId].getPlayers(index);
        }
        return null;
    }
    
    
    public GamingMachine findWereIsThePlayer(String name)
    {
        for(GamingMachine machine : gamingMachine)
        {
            if(machine.isOnThisMachine(name))
            {
                return machine;
            }
        }
        return null;
    }

    public int getSystemUsage()
    {
        return systemUsage;
    }

    public void setSystemUsage(int systemUsage)
    {
        this.systemUsage = systemUsage;
    }

    public int getDailyCredit()
    {
        return dailyCredit;
    }

    public void setDailyCredit(int dailyCredit)
    {
        this.dailyCredit = dailyCredit;
    }

    public int getNextSystem()
    {
        return nextSystem;
    }

    public void setNextSystem(int nextSystem)
    {
        this.nextSystem = nextSystem;
    }
}
