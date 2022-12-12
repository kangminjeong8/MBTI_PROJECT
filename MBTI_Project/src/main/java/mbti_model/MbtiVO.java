package mbti_model;

public class MbtiVO {

	private String mbti;
	private String info;
	private String good;
	private String bad;
	
	public MbtiVO() {
		
	}
	
	public MbtiVO(String mbti, String info, String good, String bad) {
		super();
		this.mbti = mbti;
		this.info = info;
		this.good = good;
		this.bad = bad;
	}



	public String getMbti() {
		return mbti;
	}

	public void setMbti(String mbti) {
		this.mbti = mbti;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getGood() {
		return good;
	}

	public void setGood(String good) {
		this.good = good;
	}

	public String getBad() {
		return bad;
	}

	public void setBad(String bad) {
		this.bad = bad;
	}
	
	
	
	
}
