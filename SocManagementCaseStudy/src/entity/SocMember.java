package entity;

public class SocMember {

	String flatNo;
	String memberName;
	String ownership;
	Integer maintenance;
	
	public SocMember() {}

	public SocMember(String flatNo, String memberName, String ownership, Integer maintenance) {
		super();
		this.flatNo = flatNo;
		this.memberName = memberName;
		this.ownership = ownership;
		this.maintenance = maintenance;
	}

	public String getFlatNo() {
		return flatNo;
	}

	public void setFlatNo(String flatNo) {
		this.flatNo = flatNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getOwnership() {
		return ownership;
	}

	public void setOwnership(String ownership) {
		this.ownership = ownership;
	}

	public Integer getMaintenance() {
		return maintenance;
	}

	public void setMaintenance(Integer maintenance) {
		this.maintenance = maintenance;
	}

	@Override
	public String toString() {
		return "SocMember{" +
				"flatNo='" + flatNo + '\'' +
				", memberName='" + memberName + '\'' +
				", ownership='" + ownership + '\'' +
				", maintenance=" + maintenance +
				'}';
	}

}
