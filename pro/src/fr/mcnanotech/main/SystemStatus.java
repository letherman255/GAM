package fr.mcnanotech.main;

public class SystemStatus
{
    private String c1aUser;
    private String c1bUser;
    private String c1cUser;
    private String c1dUser;

    private String c2aUser;
    private String c2bUser;
    private String c2cUser;
    private String c2dUser;

    private String c3aUser;
    private String c3bUser;
    private String c3cUser;
    private String c3dUser;

    private String c4aUser;
    private String c4bUser;
    private String c4cUser;
    private String c4dUser;

    private String c5aUser;
    private String c5bUser;
    private String c5cUser;
    private String c5dUser;

    private String c6aUser;
    private String c6bUser;
    private String c6cUser;
    private String c6dUser;

    private int c1aTime;
    private int c1bTime;
    private int c1cTime;
    private int c1dTime;

    private int c2aTime;
    private int c2bTime;
    private int c2cTime;
    private int c2dTime;

    private int c3aTime;
    private int c3bTime;
    private int c3cTime;
    private int c3dTime;

    private int c4aTime;
    private int c4bTime;
    private int c4cTime;
    private int c4dTime;

    private int c5aTime;
    private int c5bTime;
    private int c5cTime;
    private int c5dTime;

    private int c6aTime;
    private int c6bTime;
    private int c6cTime;
    private int c6dTime;

    private boolean c1a;
    private boolean c1b;
    private boolean c1c;
    private boolean c1d;

    private boolean c2a;
    private boolean c2b;
    private boolean c2c;
    private boolean c2d;

    private boolean c3a;
    private boolean c3b;
    private boolean c3c;
    private boolean c3d;

    private boolean c4a;
    private boolean c4b;
    private boolean c4c;
    private boolean c4d;

    private boolean c5a;
    private boolean c5b;
    private boolean c5c;
    private boolean c5d;

    private boolean c6a;
    private boolean c6b;
    private boolean c6c;
    private boolean c6d;

    private int c1time = 1;
    private int c2time = 2;
    private int c3time = 3;
    private int c4time = 4;
    private int c5time = 5;
    private int c6time = 6;
    
    private int c1usage;
    private int c2usage;
    private int c3usage;
    private int c4usage;
    private int c5usage;
    private int c6usage;

    private int systemUsage = 0;
    private int dailyCredit = 0;
    private int nextSystem = 0;

    /**
     * Set the given system's user.
     * 
     * @param String
     *            username
     * @param String
     *            system ex 1a; 1b; 1b; 1c; 1d; 2a ...
     */
    public void setUser(String username, String system)
    {
        if(system.equals("1a"))
        {
            c1aUser = username;
        }
        if(system.equals("1b"))
        {
            c1bUser = username;
        }
        if(system.equals("1c"))
        {
            c1cUser = username;
        }
        if(system.equals("1d"))
        {
            c1dUser = username;
        }

        // ----------------------------------------
        if(system.equals("2a"))
        {
            c2aUser = username;
        }
        if(system.equals("2b"))
        {
            c2bUser = username;
        }
        if(system.equals("2c"))
        {
            c2cUser = username;
        }
        if(system.equals("2d"))
        {
            c2dUser = username;
        }

        // ----------------------------------------
        if(system.equals("3a"))
        {
            c3aUser = username;
        }
        if(system.equals("3b"))
        {
            c3bUser = username;
        }
        if(system.equals("3c"))
        {
            c3cUser = username;
        }
        if(system.equals("3d"))
        {
            c3dUser = username;
        }

        // ----------------------------------------
        if(system.equals("4a"))
        {
            c4aUser = username;
        }
        if(system.equals("4b"))
        {
            c4bUser = username;
        }
        if(system.equals("4c"))
        {
            c4cUser = username;
        }
        if(system.equals("4d"))
        {
            c4dUser = username;
        }

        // ----------------------------------------
        if(system.equals("5a"))
        {
            c5aUser = username;
        }
        if(system.equals("5b"))
        {
            c5bUser = username;
        }
        if(system.equals("5c"))
        {
            c5cUser = username;
        }
        if(system.equals("5d"))
        {
            c5dUser = username;
        }

        // ----------------------------------------

        if(system.equals("6a"))
        {
            c6aUser = username;
        }
        if(system.equals("6b"))
        {
            c6bUser = username;
        }
        if(system.equals("6c"))
        {
            c6cUser = username;
        }
        if(system.equals("6d"))
        {
            c6dUser = username;
        }

    }

    /**
     * Sets the user of the given system to null.
     * 
     * @param system
     *            String ex 1a; 1b; 1b; 1c; 1d; 2a ...
     */
    public void killUserBySystem(String system)
    {
        if(system.equals("1a"))
        {
            c1aUser = null;
        }
        if(system.equals("1b"))
        {
            c1bUser = null;
        }
        if(system.equals("1c"))
        {
            c1cUser = null;
        }
        if(system.equals("1d"))
        {
            c1dUser = null;
        }

        // ----------------------------------------
        if(system.equals("2a"))
        {
            c2aUser = null;
        }
        if(system.equals("2b"))
        {
            c2bUser = null;
        }
        if(system.equals("2c"))
        {
            c2cUser = null;
        }
        if(system.equals("2d"))
        {
            c2dUser = null;
        }

        // ----------------------------------------
        if(system.equals("3a"))
        {
            c3aUser = null;
        }
        if(system.equals("3b"))
        {
            c3bUser = null;
        }
        if(system.equals("3c"))
        {
            c3cUser = null;
        }
        if(system.equals("3d"))
        {
            c3dUser = null;
        }

        // ----------------------------------------
        if(system.equals("4a"))
        {
            c4aUser = null;
        }
        if(system.equals("4b"))
        {
            c4bUser = null;
        }
        if(system.equals("4c"))
        {
            c4cUser = null;
        }
        if(system.equals("4d"))
        {
            c4dUser = null;
        }

        // ----------------------------------------
        if(system.equals("5a"))
        {
            c5aUser = null;
        }
        if(system.equals("5b"))
        {
            c5bUser = null;
        }
        if(system.equals("5c"))
        {
            c5cUser = null;
        }
        if(system.equals("5d"))
        {
            c5dUser = null;
        }

        // ----------------------------------------

        if(system.equals("6a"))
        {
            c6aUser = null;
        }
        if(system.equals("6b"))
        {
            c6bUser = null;
        }
        if(system.equals("6c"))
        {
            c6cUser = null;
        }
        if(system.equals("6d"))
        {
            c6dUser = null;
        }

    }

    /**
     * Set the systems with this user to null.
     * 
     * @param String
     *            username
     */
    public void killUserByUsername(String username)
    {
        if(c1aUser != null)
        {
            if(c1aUser.equals(username))
            {
                c1aUser = null;
            }
        }
        if(c1bUser != null)
        {
            if(c1bUser.equals(username))
            {
                c1bUser = null;
            }
        }
        if(c1cUser != null)
        {
            if(c1cUser.equals(username))
            {
                c1cUser = null;
            }
        }
        if(c1dUser != null)
        {
            if(c1dUser.equals(username))
            {
                c1dUser = null;
            }
        }

        // --------------------------------
        if(c2aUser != null)
        {
            if(c2aUser.equals(username))
            {
                c2aUser = null;
            }
        }
        if(c2bUser != null)
        {
            if(c2bUser.equals(username))
            {
                c2bUser = null;
            }
        }
        if(c2cUser != null)
        {
            if(c2cUser.equals(username))
            {
                c2cUser = null;
            }
        }
        if(c2dUser != null)
        {
            if(c2dUser.equals(username))
            {
                c2dUser = null;
            }
        }
        // --------------------------------
        if(c3aUser != null)
        {
            if(c3aUser.equals(username))
            {
                c3aUser = null;
            }
        }
        if(c3bUser != null)
        {
            if(c3bUser.equals(username))
            {
                c3bUser = null;
            }
        }
        if(c3cUser != null)
        {
            if(c3cUser.equals(username))
            {
                c3cUser = null;
            }
        }
        if(c3dUser != null)
        {
            if(c3dUser.equals(username))
            {
                c3dUser = null;
            }
        }
        // --------------------------------
        if(c4aUser != null)
        {
            if(c4aUser.equals(username))
            {
                c4aUser = null;
            }
        }
        if(c4bUser != null)
        {
            if(c4bUser.equals(username))
            {
                c4bUser = null;
            }
        }
        if(c4cUser != null)
        {
            if(c4cUser.equals(username))
            {
                c4cUser = null;
            }
        }
        if(c4dUser != null)
        {
            if(c4dUser.equals(username))
            {
                c4dUser = null;
            }
        }
        // --------------------------------
        if(c5aUser != null)
        {
            if(c5aUser.equals(username))
            {
                c5aUser = null;
            }
        }
        if(c5bUser != null)
        {
            if(c5bUser.equals(username))
            {
                c5bUser = null;
            }
        }
        if(c5cUser != null)
        {
            if(c5cUser.equals(username))
            {
                c5cUser = null;
            }
        }
        if(c5dUser != null)
        {
            if(c5dUser.equals(username))
            {
                c5dUser = null;
            }
        }
        // --------------------------------
        if(c6aUser != null)
        {
            if(c6aUser.equals(username))
            {
                c6aUser = null;
            }
        }
        if(c6bUser != null)
        {
            if(c6bUser.equals(username))
            {
                c6bUser = null;
            }
        }
        if(c6cUser != null)
        {
            if(c6cUser.equals(username))
            {
                c6cUser = null;
            }
        }
        if(c6dUser != null)
        {
            if(c6dUser.equals(username))
            {
                c6dUser = null;
            }
        }

    }

    /**
     * Returns the user of a given system.
     * 
     * @param system
     *            String ex 1a; 1b; 1b; 1c; 1d; 2a ...
     * @return String
     */
    public String whoIsUsing(String system)
    {
        if(system.equals("1a"))
        {
            return c1aUser;
        }
        if(system.equals("1b"))
        {
            return c1bUser;
        }
        if(system.equals("1c"))
        {
            return c1cUser;
        }
        if(system.equals("1d"))
        {
            return c1dUser;
        }

        // ----------------------------------------
        if(system.equals("2a"))
        {
            return c2aUser;
        }
        if(system.equals("2b"))
        {
            return c2bUser;
        }
        if(system.equals("2c"))
        {
            return c2cUser;
        }
        if(system.equals("2d"))
        {
            return c2dUser;
        }

        // ----------------------------------------
        if(system.equals("3a"))
        {
            return c3aUser;
        }
        if(system.equals("3b"))
        {
            return c3bUser;
        }
        if(system.equals("3c"))
        {
            return c3cUser;
        }
        if(system.equals("3d"))
        {
            return c3dUser;
        }

        // ----------------------------------------
        if(system.equals("4a"))
        {
            return c4aUser;
        }
        if(system.equals("4b"))
        {
            return c4bUser;
        }
        if(system.equals("4c"))
        {
            return c4cUser;
        }
        if(system.equals("4d"))
        {
            return c4dUser;
        }

        // ----------------------------------------
        if(system.equals("5a"))
        {
            return c5aUser;
        }
        if(system.equals("5b"))
        {
            return c5bUser;
        }
        if(system.equals("5c"))
        {
            return c5cUser;
        }
        if(system.equals("5d"))
        {
            return c5dUser;
        }

        // ----------------------------------------

        if(system.equals("6a"))
        {
            return c6aUser;
        }
        if(system.equals("6b"))
        {
            return c6bUser;
        }
        if(system.equals("6c"))
        {
            return c6cUser;
        }
        if(system.equals("6d"))
        {
            return c6dUser;
        }

        return null;
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
        if(c1aUser != null)
        {
            if(c1aUser.equals(username))
            {
                return true;
            }
        }
        if(c1bUser != null)
        {
            if(c1bUser.equals(username))
            {
                return true;
            }
        }
        if(c1cUser != null)
        {
            if(c1cUser.equals(username))
            {
                return true;
            }
        }
        if(c1dUser != null)
        {
            if(c1dUser.equals(username))
            {
                return true;
            }
        }

        // -------------------------
        if(c2aUser != null)
        {
            if(c2aUser.equals(username))
            {
                return true;
            }
        }
        if(c2bUser != null)
        {
            if(c2bUser.equals(username))
            {
                return true;
            }
        }
        if(c2cUser != null)
        {
            if(c2cUser.equals(username))
            {
                return true;
            }
        }
        if(c2dUser != null)
        {
            if(c2dUser.equals(username))
            {
                return true;
            }
        }
        // -------------------------
        if(c3aUser != null)
        {
            if(c3aUser.equals(username))
            {
                return true;
            }
        }
        if(c3bUser != null)
        {
            if(c3bUser.equals(username))
            {
                return true;
            }
        }
        if(c3cUser != null)
        {
            if(c3cUser.equals(username))
            {
                return true;
            }
        }
        if(c3dUser != null)
        {
            if(c3dUser.equals(username))
            {
                return true;
            }
        }
        // -------------------------
        if(c4aUser != null)
        {
            if(c4aUser.equals(username))
            {
                return true;
            }
        }
        if(c4bUser != null)
        {
            if(c4bUser.equals(username))
            {
                return true;
            }
        }
        if(c4cUser != null)
        {
            if(c4cUser.equals(username))
            {
                return true;
            }
        }
        if(c4dUser != null)
        {
            if(c4dUser.equals(username))
            {
                return true;
            }
        }
        // -------------------------
        if(c5aUser != null)
        {
            if(c5aUser.equals(username))
            {
                return true;
            }
        }
        if(c5bUser != null)
        {
            if(c5bUser.equals(username))
            {
                return true;
            }
        }
        if(c5cUser != null)
        {
            if(c5cUser.equals(username))
            {
                return true;
            }
        }
        if(c5dUser != null)
        {
            if(c5dUser.equals(username))
            {
                return true;
            }
        }
        // -------------------------
        if(c6aUser != null)
        {
            if(c6aUser.equals(username))
            {
                return true;
            }
        }
        if(c6bUser != null)
        {
            if(c6bUser.equals(username))
            {
                return true;
            }
        }
        if(c6cUser != null)
        {
            if(c6cUser.equals(username))
            {
                return true;
            }
        }
        if(c6dUser != null)
        {
            if(c6dUser.equals(username))
            {
                return true;
            }
        }
        // -------------------------
        return false;
    }

    public String getC1aUser()
    {
        return c1aUser;
    }

    public void setC1aUser(String c1aUser)
    {
        this.c1aUser = c1aUser;
    }

    public String getC1bUser()
    {
        return c1bUser;
    }

    public void setC1bUser(String c1bUser)
    {
        this.c1bUser = c1bUser;
    }

    public String getC1cUser()
    {
        return c1cUser;
    }

    public void setC1cUser(String c1cUser)
    {
        this.c1cUser = c1cUser;
    }

    public String getC1dUser()
    {
        return c1dUser;
    }

    public void setC1dUser(String c1dUser)
    {
        this.c1dUser = c1dUser;
    }

    public String getC2aUser()
    {
        return c2aUser;
    }

    public void setC2aUser(String c2aUser)
    {
        this.c2aUser = c2aUser;
    }

    public String getC2bUser()
    {
        return c2bUser;
    }

    public void setC2bUser(String c2bUser)
    {
        this.c2bUser = c2bUser;
    }

    public String getC2cUser()
    {
        return c2cUser;
    }

    public void setC2cUser(String c2cUser)
    {
        this.c2cUser = c2cUser;
    }

    public String getC2dUser()
    {
        return c2dUser;
    }

    public void setC2dUser(String c2dUser)
    {
        this.c2dUser = c2dUser;
    }

    public String getC3aUser()
    {
        return c3aUser;
    }

    public void setC3aUser(String c3aUser)
    {
        this.c3aUser = c3aUser;
    }

    public String getC3bUser()
    {
        return c3bUser;
    }

    public void setC3bUser(String c3bUser)
    {
        this.c3bUser = c3bUser;
    }

    public String getC3cUser()
    {
        return c3cUser;
    }

    public void setC3cUser(String c3cUser)
    {
        this.c3cUser = c3cUser;
    }

    public String getC3dUser()
    {
        return c3dUser;
    }

    public void setC3dUser(String c3dUser)
    {
        this.c3dUser = c3dUser;
    }

    public String getC4aUser()
    {
        return c4aUser;
    }

    public void setC4aUser(String c4aUser)
    {
        this.c4aUser = c4aUser;
    }

    public String getC4bUser()
    {
        return c4bUser;
    }

    public void setC4bUser(String c4bUser)
    {
        this.c4bUser = c4bUser;
    }

    public String getC4cUser()
    {
        return c4cUser;
    }

    public void setC4cUser(String c4cUser)
    {
        this.c4cUser = c4cUser;
    }

    public String getC4dUser()
    {
        return c4dUser;
    }

    public void setC4dUser(String c4dUser)
    {
        this.c4dUser = c4dUser;
    }

    public String getC5aUser()
    {
        return c5aUser;
    }

    public void setC5aUser(String c5aUser)
    {
        this.c5aUser = c5aUser;
    }

    public String getC5bUser()
    {
        return c5bUser;
    }

    public void setC5bUser(String c5bUser)
    {
        this.c5bUser = c5bUser;
    }

    public String getC5cUser()
    {
        return c5cUser;
    }

    public void setC5cUser(String c5cUser)
    {
        this.c5cUser = c5cUser;
    }

    public String getC5dUser()
    {
        return c5dUser;
    }

    public void setC5dUser(String c5dUser)
    {
        this.c5dUser = c5dUser;
    }

    public String getC6aUser()
    {
        return c6aUser;
    }

    public void setC6aUser(String c6aUser)
    {
        this.c6aUser = c6aUser;
    }

    public String getC6bUser()
    {
        return c6bUser;
    }

    public void setC6bUser(String c6bUser)
    {
        this.c6bUser = c6bUser;
    }

    public String getC6cUser()
    {
        return c6cUser;
    }

    public void setC6cUser(String c6cUser)
    {
        this.c6cUser = c6cUser;
    }

    public String getC6dUser()
    {
        return c6dUser;
    }

    public void setC6dUser(String c6dUser)
    {
        this.c6dUser = c6dUser;
    }

    public int getC1time()
    {
        return c1time;
    }

    public void setC1time(int c1time)
    {
        this.c1time = c1time;
    }

    public int getC2time()
    {
        return c2time;
    }

    public void setC2time(int c2time)
    {
        this.c2time = c2time;
    }

    public int getC3time()
    {
        return c3time;
    }

    public void setC3time(int c3time)
    {
        this.c3time = c3time;
    }

    public int getC4time()
    {
        return c4time;
    }

    public void setC4time(int c4time)
    {
        this.c4time = c4time;
    }

    public int getC5time()
    {
        return c5time;
    }

    public void setC5time(int c5time)
    {
        this.c5time = c5time;
    }

    public int getC6time()
    {
        return c6time;
    }

    public void setC6time(int c6time)
    {
        this.c6time = c6time;
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

    public boolean isC1a()
    {
        return c1a;
    }

    public void setC1a(boolean c1a)
    {
        this.c1a = c1a;
    }

    public boolean isC1b()
    {
        return c1b;
    }

    public void setC1b(boolean c1b)
    {
        this.c1b = c1b;
    }

    public boolean isC1c()
    {
        return c1c;
    }

    public void setC1c(boolean c1c)
    {
        this.c1c = c1c;
    }

    public boolean isC1d()
    {
        return c1d;
    }

    public void setC1d(boolean c1d)
    {
        this.c1d = c1d;
    }

    public boolean isC2a()
    {
        return c2a;
    }

    public void setC2a(boolean c2a)
    {
        this.c2a = c2a;
    }

    public boolean isC2b()
    {
        return c2b;
    }

    public void setC2b(boolean c2b)
    {
        this.c2b = c2b;
    }

    public boolean isC2c()
    {
        return c2c;
    }

    public void setC2c(boolean c2c)
    {
        this.c2c = c2c;
    }

    public boolean isC2d()
    {
        return c2d;
    }

    public void setC2d(boolean c2d)
    {
        this.c2d = c2d;
    }

    public boolean isC3a()
    {
        return c3a;
    }

    public void setC3a(boolean c3a)
    {
        this.c3a = c3a;
    }

    public boolean isC3b()
    {
        return c3b;
    }

    public void setC3b(boolean c3b)
    {
        this.c3b = c3b;
    }

    public boolean isC3c()
    {
        return c3c;
    }

    public void setC3c(boolean c3c)
    {
        this.c3c = c3c;
    }

    public boolean isC3d()
    {
        return c3d;
    }

    public void setC3d(boolean c3d)
    {
        this.c3d = c3d;
    }

    public boolean isC4a()
    {
        return c4a;
    }

    public void setC4a(boolean c4a)
    {
        this.c4a = c4a;
    }

    public boolean isC4b()
    {
        return c4b;
    }

    public void setC4b(boolean c4b)
    {
        this.c4b = c4b;
    }

    public boolean isC4c()
    {
        return c4c;
    }

    public void setC4c(boolean c4c)
    {
        this.c4c = c4c;
    }

    public boolean isC4d()
    {
        return c4d;
    }

    public void setC4d(boolean c4d)
    {
        this.c4d = c4d;
    }

    public boolean isC5a()
    {
        return c5a;
    }

    public void setC5a(boolean c5a)
    {
        this.c5a = c5a;
    }

    public boolean isC5b()
    {
        return c5b;
    }

    public void setC5b(boolean c5b)
    {
        this.c5b = c5b;
    }

    public boolean isC5c()
    {
        return c5c;
    }

    public void setC5c(boolean c5c)
    {
        this.c5c = c5c;
    }

    public boolean isC5d()
    {
        return c5d;
    }

    public void setC5d(boolean c5d)
    {
        this.c5d = c5d;
    }

    public boolean isC6a()
    {
        return c6a;
    }

    public void setC6a(boolean c6a)
    {
        this.c6a = c6a;
    }

    public boolean isC6b()
    {
        return c6b;
    }

    public void setC6b(boolean c6b)
    {
        this.c6b = c6b;
    }

    public boolean isC6c()
    {
        return c6c;
    }

    public void setC6c(boolean c6c)
    {
        this.c6c = c6c;
    }

    public boolean isC6d()
    {
        return c6d;
    }

    public void setC6d(boolean c6d)
    {
        this.c6d = c6d;
    }

    public int getC1aTime()
    {
        return c1aTime;
    }

    public void setC1aTime(int c1aTime)
    {
        this.c1aTime = c1aTime;
    }

    public int getC1bTime()
    {
        return c1bTime;
    }

    public void setC1bTime(int c1bTime)
    {
        this.c1bTime = c1bTime;
    }

    public int getC1cTime()
    {
        return c1cTime;
    }

    public void setC1cTime(int c1cTime)
    {
        this.c1cTime = c1cTime;
    }

    public int getC1dTime()
    {
        return c1dTime;
    }

    public void setC1dTime(int c1dTime)
    {
        this.c1dTime = c1dTime;
    }

    public int getC2aTime()
    {
        return c2aTime;
    }

    public void setC2aTime(int c2aTime)
    {
        this.c2aTime = c2aTime;
    }

    public int getC2bTime()
    {
        return c2bTime;
    }

    public void setC2bTime(int c2bTime)
    {
        this.c2bTime = c2bTime;
    }

    public int getC2cTime()
    {
        return c2cTime;
    }

    public void setC2cTime(int c2cTime)
    {
        this.c2cTime = c2cTime;
    }

    public int getC2dTime()
    {
        return c2dTime;
    }

    public void setC2dTime(int c2dTime)
    {
        this.c2dTime = c2dTime;
    }

    public int getC3aTime()
    {
        return c3aTime;
    }

    public void setC3aTime(int c3aTime)
    {
        this.c3aTime = c3aTime;
    }

    public int getC3bTime()
    {
        return c3bTime;
    }

    public void setC3bTime(int c3bTime)
    {
        this.c3bTime = c3bTime;
    }

    public int getC3cTime()
    {
        return c3cTime;
    }

    public void setC3cTime(int c3cTime)
    {
        this.c3cTime = c3cTime;
    }

    public int getC3dTime()
    {
        return c3dTime;
    }

    public void setC3dTime(int c3dTime)
    {
        this.c3dTime = c3dTime;
    }

    public int getC4aTime()
    {
        return c4aTime;
    }

    public void setC4aTime(int c4aTime)
    {
        this.c4aTime = c4aTime;
    }

    public int getC4bTime()
    {
        return c4bTime;
    }

    public void setC4bTime(int c4bTime)
    {
        this.c4bTime = c4bTime;
    }

    public int getC4cTime()
    {
        return c4cTime;
    }

    public void setC4cTime(int c4cTime)
    {
        this.c4cTime = c4cTime;
    }

    public int getC4dTime()
    {
        return c4dTime;
    }

    public void setC4dTime(int c4dTime)
    {
        this.c4dTime = c4dTime;
    }

    public int getC5aTime()
    {
        return c5aTime;
    }

    public void setC5aTime(int c5aTime)
    {
        this.c5aTime = c5aTime;
    }

    public int getC5bTime()
    {
        return c5bTime;
    }

    public void setC5bTime(int c5bTime)
    {
        this.c5bTime = c5bTime;
    }

    public int getC5cTime()
    {
        return c5cTime;
    }

    public void setC5cTime(int c5cTime)
    {
        this.c5cTime = c5cTime;
    }

    public int getC5dTime()
    {
        return c5dTime;
    }

    public void setC5dTime(int c5dTime)
    {
        this.c5dTime = c5dTime;
    }

    public int getC6aTime()
    {
        return c6aTime;
    }

    public void setC6aTime(int c6aTime)
    {
        this.c6aTime = c6aTime;
    }

    public int getC6bTime()
    {
        return c6bTime;
    }

    public void setC6bTime(int c6bTime)
    {
        this.c6bTime = c6bTime;
    }

    public int getC6cTime()
    {
        return c6cTime;
    }

    public void setC6cTime(int c6cTime)
    {
        this.c6cTime = c6cTime;
    }

    public int getC6dTime()
    {
        return c6dTime;
    }

    public void setC6dTime(int c6dTime)
    {
        this.c6dTime = c6dTime;
    }

    public int getC1usage()
    {
        return c1usage;
    }

    public void setC1usage(int c1usage)
    {
        this.c1usage = c1usage;
    }

    public int getC2usage()
    {
        return c2usage;
    }

    public void setC2usage(int c2usage)
    {
        this.c2usage = c2usage;
    }

    public int getC3usage()
    {
        return c3usage;
    }

    public void setC3usage(int c3usage)
    {
        this.c3usage = c3usage;
    }

    public int getC4usage()
    {
        return c4usage;
    }

    public void setC4usage(int c4usage)
    {
        this.c4usage = c4usage;
    }

    public int getC5usage()
    {
        return c5usage;
    }

    public void setC5usage(int c5usage)
    {
        this.c5usage = c5usage;
    }

    public int getC6usage()
    {
        return c6usage;
    }

    public void setC6usage(int c6usage)
    {
        this.c6usage = c6usage;
    }
    
    

}
