package fr.mcnanotech.main;

import java.util.ArrayList;
import java.util.List;

public class GamingMachine
{
    private List<Player> players = new ArrayList<Player>();
    private int maxPlayers;
    private int lastPlayersCount;
    private int time;

    public GamingMachine(int id, int maxPlayers)
    {
        this.maxPlayers = maxPlayers;
    }

    public void kickAll()
    {
        this.players.clear();
    }

    public Player getPlayers(int index)
    {
        return this.players.get(index);
    }

    public int getTotalPlayers()
    {
        return this.players.size();
    }

    public boolean addPlayer(Player player)
    {
        if(this.players.size() < this.maxPlayers)
        {
            this.players.add(player);
            this.updateTime();
            return true;
        }
        return false;
    }

    private void updateTime()
    {
        int newTime = 0;
        for(Player player : this.players)
        {
            newTime += player.getTime();
        }
        this.time = newTime;
    }

    public boolean removePlayer(int index)
    {
        if(index < this.players.size())
        {
            this.players.remove(index);
            return true;
        }
        return false;
    }

    public boolean removePlayerByName(String name)
    {
        for(Player player : this.players)
        {
            if(player.getUserName().equals(name))
            {
                this.players.remove(player);
                return true;
            }
        }
        return false;
    }

    public boolean isOnThisMachine(String name)
    {
        for(Player player : this.players)
        {
            if(player.getUserName().equals(name))
            {
                return true;
            }
        }
        return false;
    }

    public int getTime()
    {
        return time;
    }

    public void setTime(int time)
    {
        this.time = time;
    }

    public int getMaxPlayers()
    {
        return maxPlayers;
    }

    public int getLastPlayersCount()
    {
        return lastPlayersCount;
    }

    public void setLastPlayersCount(int lastPlayersCount)
    {
        this.lastPlayersCount = lastPlayersCount;
    }
}