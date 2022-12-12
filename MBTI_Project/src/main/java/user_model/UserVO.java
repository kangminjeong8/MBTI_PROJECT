package user_model;


public class UserVO {
	
	private String id;
	private String pw;
	private String name;
	private String gender;
	private String contactnumber;
	private String email;
	private String introduction;
	
	public UserVO() {
		
	}

	//생성자
	public UserVO(String id, String pw, String name, String gender, String contactnumber, String email,
			String introduction) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.contactnumber = contactnumber;
		this.email = email;
		this.introduction = introduction;
	}

	//get, set 메서드
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContactnumber() {
		return contactnumber;
	}

	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	
	
	
	
}
