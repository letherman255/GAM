package fr.mcnanotech.beans;

public class SystemParam {
	private int dailyCredit;
	private String date;
	private String admin1;
	private String admin2;
	private String raspberry;

	public int getDailyCredit() {
		return dailyCredit;
	}

	public void setDailyCredit(int dailyCredit) {
		this.dailyCredit = dailyCredit;
	}

	public String getAdmin1() {
		return admin1;
	}

	public void setAdmin1(String admin1) {
		this.admin1 = admin1;
	}

	public String getAdmin2() {
		return admin2;
	}

	public void setAdmin2(String admin2) {
		this.admin2 = admin2;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

    public String getRaspberry()
    {
        return raspberry;
    }

    public void setRaspberry(String raspberry)
    {
        this.raspberry = raspberry;
    }

}
