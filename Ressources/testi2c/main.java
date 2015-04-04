import java.io.IOException;

import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPin;
import com.pi4j.io.gpio.GpioPinDigitalOutput;
import com.pi4j.io.gpio.RaspiPin;
import com.pi4j.io.i2c.I2CBus;
import com.pi4j.io.i2c.I2CDevice;
import com.pi4j.io.i2c.I2CFactory;

public class main
{

    /**
     * @param args
     * @throws IOException
     */
    public static void main(String[] args) throws IOException
    {
        if(args.length != 2)
        {
            System.out.println("Usage: HelloGPIO <blinks> <interval>");
            return;
        }
        final I2CBus bus = I2CFactory.getInstance(I2CBus.BUS_1);
        I2CDevice arduino = bus.getDevice(0x04);
        int numberOfBlinks, interval;
        numberOfBlinks = Integer.parseInt(args[0]);
        interval = Integer.parseInt(args[1]);

        GpioPinDigitalOutput led1, led2, led3, led4;

        final GpioController gpio = GpioFactory.getInstance();
        led1 = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_02);
        led2 = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_03);
        led3 = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_04);
        led4 = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_05);
        GpioPinDigitalOutput[] led = {led1, led2, led3, led4};

        for(int i = 0; i < numberOfBlinks; i++)
        {
            for(int y = 0; y < 4; y++)
            {
                arduino.write((byte)(y + 10));
                try
                {
                    Thread.sleep(interval);
                }
                catch(InterruptedException e)
                {
                    e.printStackTrace();
                }
                arduino.write((byte)(y));
            }

            for(int x = 0; x < 4; x++)
            {
                led[x].setState(true);
                try
                {
                    Thread.sleep(interval);
                }
                catch(InterruptedException e)
                {
                    e.printStackTrace();
                }
                led[x].setState(false);
            }

        }      
    }

}
