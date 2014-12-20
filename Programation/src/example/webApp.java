package example;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPin;
import com.pi4j.io.gpio.GpioPinDigitalInput;
import com.pi4j.io.gpio.PinPullResistance;
import com.pi4j.io.gpio.PinState;
import com.pi4j.io.gpio.RaspiPin;

public class WebApp extends HttpServlet
{
    final GpioController gpio = GpioFactory.getInstance();

    GpioPinDigitalInput boutton = gpio.provisionDigitalInputPin(RaspiPin.GPIO_02, "boutton", PinPullResistance.PULL_DOWN);

    boolean bouttonpressed = boutton.isHigh();
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {

        resp.getWriter().println(new Date());
        resp.getWriter().println("test");
    }
}
