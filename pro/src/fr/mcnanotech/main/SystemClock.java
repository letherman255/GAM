package fr.mcnanotech.main;

import fr.mcnanotech.dao.UserDao;

public class SystemClock
{
    public static int time;

    /**
     * This method should be called every interval of time to time the system.
     * 
     * @param st
     * @param userDao
     */
    public static void tick(SystemStatus st, UserDao userDao)
    {
        time++;
        if(st.getC1usage() != 0)
        {

            if(time % st.getC1usage() == 0)
            {

                if(st.getC1time() > 1)
                {
                    if(st.getC1aUser() != null)
                    {
                        st.setC1aTime(st.getC1aTime() - 1);
                    }
                    if(st.getC1bUser() != null)
                    {
                        st.setC1bTime(st.getC1bTime() - 1);
                    }
                    if(st.getC1cUser() != null)
                    {
                        st.setC1cTime(st.getC1cTime() - 1);
                    }
                    if(st.getC1dUser() != null)
                    {
                        st.setC1dTime(st.getC1dTime() - 1);
                    }

                    st.setC1time(st.getC1aTime() + st.getC1bTime() + st.getC1cTime() + st.getC1dTime());

                    if(st.getC1aUser() != null && st.getC1aTime() >= 0)
                    {

                        userDao.setUserCredit(st.getC1aUser(), st.getC1aTime());
                    }
                    if(st.getC1bUser() != null && st.getC1bTime() >= 0)
                    {

                        userDao.setUserCredit(st.getC1bUser(), st.getC1bTime());
                    }
                    if(st.getC1cUser() != null && st.getC1cTime() >= 0)
                    {

                        userDao.setUserCredit(st.getC1cUser(), st.getC1cTime());
                    }
                    if(st.getC1dUser() != null && st.getC1dTime() >= 0)
                    {

                        userDao.setUserCredit(st.getC1dUser(), st.getC1dTime());
                    }

                }
                else
                {
                    st.setC1aUser(null);
                    st.setC1bUser(null);
                    st.setC1cUser(null);
                    st.setC1dUser(null);
                    st.setC1usage(0);
                    st.setC1time(0);
                }

            }
        }
    }
}
