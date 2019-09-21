package bean;

public class usedJob {
	private String OwnerName;
	private String jobIntro;
	private String jobNumber;
	private String jobRequire;
	private String jobPrice;
	private String jobState;
	
	public usedJob() {
		super();
		this.OwnerName = null;
		this.jobIntro = null;
		this.jobNumber = null;
		this.jobRequire = null;
		this.jobPrice = null;
		this.jobState = null;
	}
	
	public usedJob(String ownerName, String jobIntro, String jobNumber,
			String jobRequire, String jobPrice, String jobState) {
		super();
		this.OwnerName = ownerName;
		this.jobIntro = jobIntro;
		this.jobNumber = jobNumber;
		this.jobRequire = jobRequire;
		this.jobPrice = jobPrice;
		this.jobState = jobState;
	}

	public String getOwnerName() {
		return OwnerName;
	}

	public void setOwnerName(String ownerName) {
		OwnerName = ownerName;
	}

	public String getJobIntro() {
		return jobIntro;
	}

	public void setJobIntro(String jobIntro) {
		this.jobIntro = jobIntro;
	}

	public String getJobNumber() {
		return jobNumber;
	}

	public void setJobNumber(String jobNumber) {
		this.jobNumber = jobNumber;
	}

	public String getJobRequire() {
		return jobRequire;
	}

	public void setJobRequire(String jobRequire) {
		this.jobRequire = jobRequire;
	}

	public String getJobPrice() {
		return jobPrice;
	}

	public void setJobPrice(String jobPrice) {
		this.jobPrice = jobPrice;
	}

	public String getJobState() {
		return jobState;
	}

	public void setJobState(String jobState) {
		this.jobState = jobState;
	}
	
	
	
}
