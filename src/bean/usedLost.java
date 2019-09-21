package bean;

public class usedLost {
	private String OwnerName;
	private String lostName;
	private String lostIntro;
	private String lostPickup;
	private String lostState;
	
	public usedLost() {
		super();
		this.OwnerName = null;
		this.lostName = null;
		this.lostIntro = null;
		this.lostPickup = null;
		this.lostState = null;
	}
	
	public usedLost(String ownerName, String lostName, String lostIntro,
			String lostPickup, String lostState) {
		super();
		this.OwnerName = ownerName;
		this.lostName = lostName;
		this.lostIntro = lostIntro;
		this.lostPickup = lostPickup;
		this.lostState = lostState;
	}
	
	public String getOwnerName() {
		return OwnerName;
	}
	public void setOwnerName(String ownerName) {
		OwnerName = ownerName;
	}
	public String getLostName() {
		return lostName;
	}
	public void setLostName(String lostName) {
		this.lostName = lostName;
	}
	public String getLostIntro() {
		return lostIntro;
	}
	public void setLostIntro(String lostIntro) {
		this.lostIntro = lostIntro;
	}
	public String getLostPickup() {
		return lostPickup;
	}
	public void setLostPickup(String lostPickup) {
		this.lostPickup = lostPickup;
	}
	public String getLostState() {
		return lostState;
	}
	public void setLostState(String lostState) {
		this.lostState = lostState;
	}
}
