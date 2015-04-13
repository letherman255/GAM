package fr.mcnanotech.gpio;

import java.io.IOException;
import com.lcdfx.io.AdafruitLcdPlate;
import com.lcdfx.io.Lcd;

import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CDevice;
import com.pi4j.io.i2c.I2CFactory;

import fr.mcnanotech.main.SystemStatus;

public class I2CTransfer
{
    private static I2CDevice a1 = null, a2 = null, a3 = null, a4 = null, a5 = null, a6 = null;
    private static I2CDevice[] arduino = {a1, a2, a3, a4, a5, a6,};
    private static I2CDevice device = null;
    private static Lcd lcd = null;
    private static boolean isI2Cinit = false;

    public static void initI2C(String raspberry) throws IOException
    {
        if(raspberry.equals("true"))
        {
            final I2CBus bus = I2CFactory.getInstance(I2CBus.BUS_1);
            for(int i = 0; i < (arduino.length); i++)
            {
                if(bus.getDevice(i) != null)
                {
                    arduino[i] = bus.getDevice(i);
                }
                else
                {
                    System.err.println("Arduino " + i + " not found on the i2c bus.");
                }
                isI2Cinit = true;
            }
            device = bus.getDevice(20);
            try
            {
                lcd = new AdafruitLcdPlate(device);
            }
            catch(InterruptedException e)
            {
                e.printStackTrace();
            }
        }
        else
        {
            System.out.println("The server is not launched on a raspberry pi, disabling the I2C");
        }
    }

    public static void setState(int arduinoAddress, int controller, boolean state) throws IOException
    {
        if(isI2Cinit)
        {
            switch(controller)
            {
                case 0:
                {
                    if(state)
                    {
                        arduino[arduinoAddress].write((byte)10);
                    }
                    else
                    {
                        arduino[arduinoAddress].write((byte)0);
                    }
                    break;
                }
                case 1:
                {
                    if(state)
                    {
                        arduino[arduinoAddress].write((byte)11);
                    }
                    else
                    {
                        arduino[arduinoAddress].write((byte)1);
                    }
                    break;
                }
                case 2:
                {
                    if(state)
                    {
                        arduino[arduinoAddress].write((byte)12);
                    }
                    else
                    {
                        arduino[arduinoAddress].write((byte)2);
                    }
                    break;
                }
                case 3:
                {
                    if(state)
                    {
                        arduino[arduinoAddress].write((byte)13);
                    }
                    else
                    {
                        arduino[arduinoAddress].write((byte)3);
                    }
                    break;
                }

            }
        }
    }

    public static void initLcd(int color)
    {
        lcd.setBacklight(color);
        lcd.setCursorPosition(1, lcdGetCenter("GAM"));
        lcd.write("GAM");
        lcd.setCursorHome();
    }

    public static void updateLcd(SystemStatus st)
    {
        if(isI2Cinit)
        {
            lcd.clear();
            lcd.setCursorPosition(0, lcdGetCenter("Utilisation"));
            lcd.write("utilisation");
            lcd.setCursorPosition(1, lcdGetCenter(Integer.toString((st.getSystemUsage()))));
            lcd.write(Integer.toString((st.getSystemUsage())));
        }
    }

    public static void updateLcdColor(int color)
    {
        lcd.setBacklight(color);
    }

    private static int lcdGetCenter(String string)
    {
        int column = (int)Math.ceil((16 - string.length()) / 2);

        return column;
    }
}
