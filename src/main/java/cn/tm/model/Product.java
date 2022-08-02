package cn.tm.model;

public class Product {
	
	private int pid;
	private String pname;
	private String pinfo;
	private String pimg;
	private double prate;
	private int cat_id;
	
	
	public Product() {
		super();
	}

	public Product(int pid, String pname, String pinfo, String pimg, double prate, int cat_id) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pinfo = pinfo;
		this.pimg = pimg;
		this.prate = prate;
		this.cat_id = cat_id;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPinfo() {
		return pinfo;
	}

	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}

	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}

	public double getPrate() {
		return prate;
	}

	public void setPrate(double prate) {
		this.prate = prate;
	}

	public int getCat_id() {
		return cat_id;
	}

	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", pinfo=" + pinfo + ", pimg=" + pimg + ", prate=" + prate
				+ ", cat_id=" + cat_id + "]";
	}
	
	
	
}
