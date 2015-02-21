package fr.mcnanotech.beans;

public class User
{
    private Long id;
    private String username;
    private String password;
    private String mdlid;
    private String name;
    private String Surname;

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getMdlid()
    {
        return mdlid;
    }

    public void setMdlid(String mdlid)
    {
        this.mdlid = mdlid;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getSurname()
    {
        return Surname;
    }

    public void setSurname(String surname)
    {
        Surname = surname;
    }

}
