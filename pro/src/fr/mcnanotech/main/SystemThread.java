package fr.mcnanotech.main;

public class SystemThread extends Thread {
	public void run() {
		while (true) {
			System.out.println(System.currentTimeMillis());
			try {
				sleep(5000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}

	}
}
