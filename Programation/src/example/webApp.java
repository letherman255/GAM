package example;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;

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

        /* Création du bean et initialisation de ses propriétés */
        Coyote premierBean = new Coyote();
        premierBean.setNom("Coyote");
        premierBean.setPrenom("Wile E.");

        /** On utilise ici la libraire Joda pour manipuler les dates, pour deux raisons :
         *    - c'est tellement plus simple et limpide que de travailler avec les objets Date ou Calendar !
         *    - c'est (probablement) un futur standard de l'API Java.
         */
        DateTime dt = new DateTime();
        int jourDuMois = dt.getDayOfMonth();
        /* Stockage du message, du bean et de la liste dans l'objet request */
        request.setAttribute("test", message);
        request.setAttribute("coyote", premierBean);
        request.setAttribute("jour", jourDuMois);

        /* Transmission de la paire d'objets request/response à notre JSP */
        this.getServletContext().getRequestDispatcher("/WEB-INF/example.jsp").forward(request, response);
    }

}