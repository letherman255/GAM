package fr.mcnanotech.gpio;

import java.io.IOException;

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
                    arduino = bus.getDevice(1);
                }
                else
                {
                    System.err.println("Arduino not found on the i2c bus.");
                }
                isI2Cinit = true;
            

            try
            {
                int adress = 0x20;
                lcd = new AdafruitLcdPlate(I2CBus.BUS_1, adress);
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
                        arduino.write((byte)10);
                    }
                    else
                    {
                        arduino.write((byte)0);
                    }
                    break;
                }
                case 1:
                {
                    if(state)
                    {
                        arduino.write((byte)11);
                    }
                    else
                    {
                        arduino.write((byte)1);
                    }
                    break;
                }
                case 2:
                {
                    if(state)
                    {
                        arduino.write((byte)12);
                    }
                    else
                    {
                        arduino.write((byte)2);
                    }
                    break;
                }
                case 3:
                {
                    if(state)
                    {
                        arduino.write((byte)13);
                    }
                    else
                    {
                        arduino.write((byte)3);
                    }
                    break;
                }

            }
        }
    }

    public static void writeName()
    {
        if(isI2Cinit)
        {
            lcd.write("      GAM      ");
        }
    }

    public static void updateLcd(SystemStatus st)
    {
        // lcd.clear();
        // lcd.write(" Utilisation :  ");
        // lcd.setCursorPosition(0, 2);
        // lcd.write(Integer.toString(st.getSystemUsage()));

    }
}
