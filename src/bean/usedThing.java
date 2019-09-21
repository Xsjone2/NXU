package bean;

public class usedThing {
	private String thingsName;
	private int thingsPrice;
	private String thingsIntro;
	private String OwnerName;
	private String thingsState;
	private String OwnerPhone;

	
	public usedThing() {
		super();
		this.thingsName = null;
		this.thingsPrice = 0;
		this.thingsIntro = null;
		this.OwnerName = null;
		this.thingsState = null;
		this.OwnerPhone = null;
	}
	
	public usedThing(String thingsName, int thingsPrice, String thingsIntro, String ownerName, String thingsState,
			String ownerPhone) {
		super();
		this.thingsName = thingsName;
		this.thingsPrice = thingsPrice;
		this.thingsIntro = thingsIntro;
		this.OwnerName = ownerName;
		this.thingsState = thingsState;
		this.OwnerPhone = ownerPhone;
	}

	public String getThingsName() {
		return thingsName;
	}

	public void setThingsName(String thingsName) {
		this.thingsName = thingsName;
	}

	public int getThingsPrice() {
		return thingsPrice;
	}

	public void setThingsPrice(int thingsPrice) {
		this.thingsPrice = thingsPrice;
	}

	public String getThingsIntro() {
		return thingsIntro;
	}

	public void setThingsIntro(String thingsIntro) {
		this.thingsIntro = thingsIntro;
	}

	public String getOwnerName() {
		return OwnerName;
	}

	public void setOwnerName(String ownerName) {
		OwnerName = ownerName;
	}

	public String getThingsState() {
		return thingsState;
	}

	public void setThingsState(String thingsState) {
		this.thingsState = thingsState;
	}

	public String getOwnerPhone() {
		return OwnerPhone;
	}

	public void setOwnerPhone(String ownerPhone) {
		OwnerPhone = ownerPhone;
	}

	
	
	
}
