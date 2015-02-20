package fr.mcnanotech.servlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.mcnanotech.main.Text;
import fr.mcnanotech.main.Test;
@SuppressWarnings("serial")
public class SystemStartup extends HttpServlet {
	Text test2 = new Text();
	public void init() {
		
		System.out.println("lancement du thread !");
		//Thread t = Test.daemonFactory.newThread(test2);
		test2.start();
		System.out.println("fin du thread !");

	}
}