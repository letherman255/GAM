package fr.mcnanotech.gpio;

import java.io.IOException;

import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CDevice;
import com.pi4j.io.i2c.I2CFactory;

public class I2CTransfer
{
    private static I2CDevice[] arduino = new I2CDevice[6];
    private static boolean isI2Cinit = false;
    private static Lcd lcd;

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
    
    public static void testTheFuckingScreen()
    {
        lcd.write("ICH BIN EINE SC");
    }
}
