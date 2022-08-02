package cn.tm.model;

public class User {

	private int uid;
	private String fname;
	private String lname;
	private String mail;
	private Long number;
	private String address;
	private String pass;
	
	public User(int uid, String fname, String lname, String mail, Long number, String address, String pass) {
		this.uid = uid;
		this.fname = fname;
		this.lname = lname;
		this.mail = mail;
		this.number = number;
		this.address = address;
		this.pass = pass;
	}

	public User() {
		
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public Long getNumber() {
		return number;
	}

	public void setNumber(Long number) {
		this.number = number;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", fname=" + fname + ", lname=" + lname + ", mail=" + mail + ", number=" + number
				+ ", address=" + address + ", pass=" + pass + "]";
	}
	
	
	
	
}
