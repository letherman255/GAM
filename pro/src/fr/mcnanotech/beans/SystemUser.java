package fr.mcnanotech.beans;

public class SystemUser
{
    private int creditPercentage = 0;
    private int creditLeft = 0;
    private String username = "defaultUsername";
    private String peripheral = "defaultPeripheral";
    private String system = "defaultSystem";

    public int getCreditPercentage()
    {
        return creditPercentage;
    }

    public void setCreditPercentage(int creditPercentage)
    {
        this.creditPercentage = creditPercentage;
    }

    public int getCreditLeft()
    {
        return creditLeft;
    }

    public void setCreditLeft(int creditLeft)
    {
        this.creditLeft = creditLeft;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getPeripheral()
    {
        return peripheral;
    }

    public void setPeripheral(String peripheral)
    {
        this.peripheral = peripheral;
    }

    public String getSystem()
    {
        return system;
    }

    public void setSystem(String system)
    {
        this.system = system;
    }



}
