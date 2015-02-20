package fr.mcnanotech.main;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class SystemContextListner implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		SystemThread thread = new SystemThread();
		System.out.println("lancement du thread !");
		thread.start();
		System.out.println("Thread lance");

	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

}
