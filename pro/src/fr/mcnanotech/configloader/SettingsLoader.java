package fr.mcnanotech.configloader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import fr.mcnanotech.beans.SystemParam;

public class SettingsLoader
{
    private static final String CREDIT = "credit_quotidien";
    private static final String PROPERTY_FILE = "system.properties";
    private static final String ADMIN_NAME = "nom_administrateur";

    public SystemParam loadParams(SystemParam sp)
    {
        Properties props = new Properties();
        InputStream is = null;

        // First try loading from the current directory
        try
        {
            File f = new File("system.properties");
            is = new FileInputStream(f);
        }
        catch(Exception e)
        {
            is = null;
        }

        try
        {
            if(is == null)
            {
                // Try loading from classpath
                is = getClass().getResourceAsStream(PROPERTY_FILE);
            }

            // Try loading properties from the file (if found)
            props.load(is);
        }
        catch(Exception e)
        {}
        sp.setDailyCredit(new Integer(props.getProperty(CREDIT, "1500")));
        sp.setAdmin(new String(props.getProperty(ADMIN_NAME, "admin")));
        try
        {
            is.close();
        }
        catch(IOException e)
        {
            e.printStackTrace();
        }
        return sp;

        // serverAddr = props.getProperty("ServerAddress", "192.168.0.1");
        // serverPort = new Integer(props.getProperty("ServerPort", "8080"));
        // threadCnt = new Integer(props.getProperty("ThreadCount", "5"));
    }
}