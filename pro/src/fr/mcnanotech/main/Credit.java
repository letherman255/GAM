package fr.mcnanotech.main;

public enum Credit
{
    full("red"),
    half("orange"),
    free("green");
    
    private final String color;

    Credit(String creditColor)
    {
        color = creditColor;
    }

    public String getColor()
    {
        return color;
    }
}
