package fr.mcnanotech.configloader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.print.attribute.standard.DateTimeAtCreation;

import org.joda.time.DateTime;

import fr.mcnanotech.beans.SystemParam;

public class SettingsLoader {
	private static final String CREDIT = "credit_quotidien";
	private static final String PROPERTY_FILE = "system.properties";
	private static final String ADMIN1 = "admin1";
	private static final String ADMIN2 = "admin2";
	private static final String DATE = "date";

	public SystemParam loadParams(SystemParam sp) {
		Properties props = new Properties();
		InputStream is = null;

		// First try loading from the current directory
		try {
			File f = new File(PROPERTY_FILE);
			is = new FileInputStream(f);
		} catch (Exception e) {
			is = null;
		}

		try {
			if (is == null) {
				// Try loading from classpath
				is = getClass().getResourceAsStream(PROPERTY_FILE);
			}

			// Try loading properties from the file (if found)
			props.load(is);
			is.close();
		} catch (Exception e) {

		}

		DateTime today = new DateTime();

		sp.setDailyCredit(new Integer(props.getProperty(CREDIT, "2300")));
		sp.setDate(new String(props.getProperty(DATE,
				today.toString("dd-MMM-yyyy"))));
		sp.setAdmin1(new String(props.getProperty(ADMIN1, "admin")));
		sp.setAdmin2(new String(props.getProperty(ADMIN2, "matthias")));

		return sp;
	}

	public void saveParamChanges(SystemParam sp) {
		try {
			Properties props = new Properties();
			props.setProperty(CREDIT, Integer.toString(sp.getDailyCredit()));
			props.setProperty(DATE, sp.getDate());
			props.setProperty(ADMIN2, sp.getAdmin2());
			props.setProperty(ADMIN1, sp.getAdmin1());
			File f = new File(PROPERTY_FILE);
			OutputStream out = new FileOutputStream(f);
			props.store(out, "Fichier de configuration système");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
