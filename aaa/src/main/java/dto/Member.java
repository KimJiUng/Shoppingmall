package dto;

public class Member {

	private int mnum;
	private String mid;
	private String mpassword;
	private String mname;
	private String memail;
	private String mphone;
	private int mpoint;
	private String mbirthday;
	private String mdate;
	private int mgrade;
	private String maddress;
	
	public Member() {}
	

	public Member(int mnum, String mid, String mname) {
		super();
		this.mnum = mnum;
		this.mid = mid;
		this.mname = mname;
	}


	public Member(int mnum, String mid, String mpassword, String mname, String memail, String mphone, int mpoint,
			String mbirthday, String mdate, int mgrade, String maddress) {
		super();
		this.mnum = mnum;
		this.mid = mid;
		this.mpassword = mpassword;
		this.mname = mname;
		this.memail = memail;
		this.mphone = mphone;
		this.mpoint = mpoint;
		this.mbirthday = mbirthday;
		this.mdate = mdate;
		this.mgrade = mgrade;
		this.maddress = maddress;
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

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
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

	public int getMgrade() {
		return mgrade;
	}

	public void setMgrade(int mgrade) {
		this.mgrade = mgrade;
	}

	public String getMaddress() {
		return maddress;
	}

	public void setMaddress(String maddress) {
		this.maddress = maddress;
	}

	@Override
	public String toString() {
		return "Member [mnum=" + mnum + ", mid=" + mid + ", mpassword=" + mpassword + ", mname=" + mname + ", memail="
				+ memail + ", mphone=" + mphone + ", mpoint=" + mpoint + ", mbirthday=" + mbirthday + ", mdate=" + mdate
				+ ", mgrade=" + mgrade + ", maddress=" + maddress + "]";
	}
	
	
	
	
	
}
