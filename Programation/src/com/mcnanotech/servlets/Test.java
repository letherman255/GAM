package com.mcnanotech.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinDigitalOutput;
import com.pi4j.io.gpio.PinState;
import com.pi4j.io.gpio.RaspiPin;

import fr.mcnanotech.beans.System1;
import fr.mcnanotech.beans.System2;
import fr.mcnanotech.beans.System3;
import fr.mcnanotech.beans.System4;

public class Test extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        /* Transmission de la paire d'objets request/response à notre JSP */

        System1 system1 = new System1();
        system1.setUser_1("utilisateur");
        System2 system2 = new System2();
        System3 system3 = new System3();
        System4 system4 = new System4();
        this.getServletContext().getRequestDispatcher("/WEB-INF/Admin.jsp").forward(request, response);
        // System.out.println("<--Pi4J--> GPIO Control Example ... started.");
        //
        // // create gpio controller
        // final GpioController gpio = GpioFactory.getInstance();
        //
        // // provision gpio pin #01 as an output pin and turn on
        // final GpioPinDigitalOutput pin = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_01, "MyLED", PinState.HIGH);
        // System.out.println("--> GPIO state should be: ON");
        //
        // try
        // {
        // Thread.sleep(5000);
        // }
        // catch(InterruptedException e)
        // {
        // // TODO Auto-generated catch block
        // e.printStackTrace();
        // }
        //
        // // turn off gpio pin #01
        // pin.low();
        // System.out.println("--> GPIO state should be: OFF");
        //
        // try
        // {
        // Thread.sleep(5000);
        // }
        // catch(InterruptedException e)
        // {
        // // TODO Auto-generated catch block
        // e.printStackTrace();
        // }
        //
        // // toggle the current state of gpio pin #01 (should turn on)
        // pin.toggle();
        // System.out.println("--> GPIO state should be: ON");
        //
        // try
        // {
        // Thread.sleep(5000);
        // }
        // catch(InterruptedException e)
        // {
        // // TODO Auto-generated catch block
        // e.printStackTrace();
        // }
        //
        // // toggle the current state of gpio pin #01 (should turn off)
        // pin.toggle();
        // System.out.println("--> GPIO state should be: OFF");
        //
        // try
        // {
        // Thread.sleep(5000);
        // }
        // catch(InterruptedException e)
        // {
        // // TODO Auto-generated catch block
        // e.printStackTrace();
        // }
        //
        // // turn on gpio pin #01 for 1 second and then off
        // System.out.println("--> GPIO state should be: ON for only 1 second");
        // pin.pulse(1000, true); // set second argument to 'true' use a blocking call
        //
        // // stop all GPIO activity/threads by shutting down the GPIO controller
        // // (this method will forcefully shutdown all GPIO monitoring threads and scheduled tasks)
        // gpio.shutdown();
    }
}
