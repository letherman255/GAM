package fr.mcnanotech.main;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import fr.mcnanotech.gpio.I2CTransfer;

public class GamingMachine
{
    private List<Player> players = new ArrayList<Player>();
    private int maxPlayers;
    private int lastPlayersCount;
    private int time;
    private int id;

    public GamingMachine(int id, int maxPlayers)
    {
        this.id = id;
        this.maxPlayers = maxPlayers;
    }

    public void kickAll()
    {
        this.players.clear();
        for(int i = 0; i < 4; i++)
        {
            try
            {
                I2CTransfer.setState(this.id, i, false);
            }
            catch(IOException e)
            {
                e.printStackTrace();
            }
        }
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
            try
            {
                I2CTransfer.setState(this.id, this.players.indexOf(player), true);
            }
            catch(IOException e)
            {
                e.printStackTrace();
            }
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

            try
            {
                I2CTransfer.setState(this.id, index, false);
            }
            catch(IOException e)
            {
                e.printStackTrace();
            }
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

                try
                {
                    I2CTransfer.setState(this.id, this.players.indexOf(player), false);
                }
                catch(IOException e)
                {
                    e.printStackTrace();
                }
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

    public int getCreditedPlayers()
    {
        int i = 0;
        for(Player player : this.players)
        {
            if(player.getTime() > 0)
            {
                i++;
            }
        }
        return i;
    }

    public int getId()
    {
        return this.id;
    }
}