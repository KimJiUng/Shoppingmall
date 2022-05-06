package dto;

public class Member {

	private int mnum;
	private String mid;
	private String mpassword;
	private String memail;
	private String mphone;
	private int mpoint;
	private String mbirthday;
	private String mdate;
	
	public Member() {}

	public Member(int mnum, String mid, String mpassword, String memail, String mphone, int mpoint, String mbirthday,
			String mdate) {
		this.mnum = mnum;
		this.mid = mid;
		this.mpassword = mpassword;
		this.memail = memail;
		this.mphone = mphone;
		this.mpoint = mpoint;
		this.mbirthday = mbirthday;
		this.mdate = mdate;
	}

	public int getMnum() {
		return mnum;
	}

	public void setMnum(int mnum) {
		this.mnum = mnum;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpassword() {
		return mpassword;
	}

	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public int getMpoint() {
		return mpoint;
	}

	public void setMpoint(int mpoint) {
		this.mpoint = mpoint;
	}

	public String getMbirthday() {
		return mbirthday;
	}

	public void setMbirthday(String mbirthday) {
		this.mbirthday = mbirthday;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	@Override
	public String toString() {
		return "Member [mnum=" + mnum + ", mid=" + mid + ", mpassword=" + mpassword + ", memail=" + memail + ", mphone="
				+ mphone + ", mpoint=" + mpoint + ", mbirthday=" + mbirthday + ", mdate=" + mdate + "]";
	}
	
	
	
}
