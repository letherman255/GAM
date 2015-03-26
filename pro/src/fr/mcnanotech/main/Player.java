package fr.mcnanotech.main;

public class Player
{
    private String username;
    private int time; 
    
    public Player(String name, int time)
    {
        this.username = name;
        this.time = time;
    }

    public int getTime()
    {
        return time;
    }

    public void setTime(int time)
    {
        this.time = time;
    }

    public String getUserName()
    {
        return username;
    }
}