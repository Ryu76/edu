package user.model;

public class UserVO {

	private String idx;
	private String name;
	private String u_id;
	private String u_pwd;
	private String phone;
	private String mail;
	private String loc;
	
	public UserVO() {
		
		this("","","","","","","");
		
	}
	public UserVO(String u_id,String u_pwd) {
		super();
		this.u_id=u_id;
		this.u_pwd=u_pwd;
	}

	public UserVO(String idx, String name, String id, String u_pwd, 
			String phone, String mail,String loc) {
		
		this.idx=idx;
		this.name=name;
		this.u_id=id;
		this.u_pwd=u_pwd;
		this.phone=phone;
		this.mail=mail;
		this.loc=loc;
		
	}
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
		

}
