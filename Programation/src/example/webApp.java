package example;

import java.io.IOException;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mcnanotech.beans.Coyote;
import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPin;
import com.pi4j.io.gpio.GpioPinDigitalInput;
import com.pi4j.io.gpio.PinPullResistance;
import com.pi4j.io.gpio.PinState;
import com.pi4j.io.gpio.RaspiPin;

public class WebApp extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException

    {
        /* Création et initialisation du message. */
        String paramAuteur = request.getParameter("auteur");
        String message = "Transmission de variables : OK ! " + paramAuteur;

        /* Création du bean */
        Coyote premierBean = new Coyote();
        /* Initialisation de ses propriétés */
        premierBean.setNom("Coyote");
        premierBean.setPrenom("Wile E.");

        /* Stockage du message et du bean dans l'objet request */
        request.setAttribute("test", message);
        request.setAttribute("coyote", premierBean);

        this.getServletContext().getRequestDispatcher("/WEB-INF/example.jsp").forward(request, response);
    }

}