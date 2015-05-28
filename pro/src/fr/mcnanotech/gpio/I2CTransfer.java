package fr.mcnanotech.gpio;

import java.io.IOException;
import java.util.Random;

import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CDevice;
import com.pi4j.io.i2c.I2CFactory;

import fr.mcnanotech.main.SystemStatus;

public class I2CTransfer
{
    private static I2CDevice arduino;
    private static boolean isI2Cinit = false;
    private static Lcd lcd;
    public static void initI2C(String raspberry) throws IOException
    {
        if(raspberry.equals("true"))
        {
            final I2CBus bus = I2CFactory.getInstance(I2CBus.BUS_1);

            if(bus != null)
            {
                arduino = bus.getDevice(10);
            }
            else
            {
                System.err.println("Arduino not found on the i2c bus.");
            }

            try
            {
                int adress = 0x20;
                lcd = new AdafruitLcdPlate(I2CBus.BUS_1, adress);
            }
            catch(InterruptedException e)
            {
                e.printStackTrace();
            }
            System.out.println("l'écran est null ? " + Boolean.valueOf(lcd == null));
            isI2Cinit = true;
        }
        else
        {
            System.out.println("The server is not launched on a raspberry pi, disabling the I2C");
        }
    }

    public static void setState(int offset, int controller, boolean state) throws IOException
    {
        offset = offset * 10;
        if(isI2Cinit)
        {
            switch(controller)
            {
                case 0:
                {
                    if(state)
                    {
                        arduino.write((byte)(offset + 20));
                    }
                    else
                    {
                        arduino.write((byte)(offset + 21));
                    }
                    break;
                }
                case 1:
                {
                    if(state)
                    {
                        arduino.write((byte)(offset + 22));
                    }
                    else
                    {
                        arduino.write((byte)(offset + 23));
                    }
                    break;
                }
                case 2:
                {
                    if(state)
                    {
                        arduino.write((byte)(offset + 24));
                    }
                    else
                    {
                        arduino.write((byte)(offset + 25));
                    }
                    break;
                }
                case 3:
                {
                    if(state)
                    {
                        arduino.write((byte)(offset + 26));
                    }
                    else
                    {
                        arduino.write((byte)(offset + 27));
                    }
                    break;
                }

            }
        }
    }

    public static void initLCD()
    {
        if(isI2Cinit)
        {
            lcd.setBacklight(Lcd.BACKLIGHT_RED);
            lcd.write("      GAM      ");
        }
    }

    public static void updateSignal(SystemStatus st)
    {
        try
        {
            arduino.write((byte)10);
        }
        catch(IOException e)
        {
            e.printStackTrace();
        }
    }

    public static void updateLcd(SystemStatus st)
    {
        lcd.setCursorHome();
        lcd.clear();
        lcd.write("credit : " + String.valueOf(st.getDailyCredit()));
        lcd.setCursorPosition(1, 0);
        lcd.write("suivant : " + String.valueOf(st.getNextSystem()));

    }

    public static void systemOnline()
    {
        if(isI2Cinit)
        {
            try
            {
                arduino.write((byte)1);
            }
            catch(IOException e)
            {
                e.printStackTrace();
            }
        }
    }
}
