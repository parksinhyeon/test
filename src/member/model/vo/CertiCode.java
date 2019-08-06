package member.model.vo;

public class CertiCode {
	private String certiCode;

	public CertiCode() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CertiCode(String certiCode) {
		super();
		this.certiCode = certiCode;
	}

	public String getCertiCode() {
		return certiCode;
	}

	public void setCertiCode(String certiCode) {
		this.certiCode = certiCode;
	}

	@Override
	public String toString() {
		return "CertiCode [certiCode=" + certiCode + "]";
	}
	
	
}
