package entity;

public class Society {
    String socName;
    String address;
    String city;

    public Society(String socName, String address, String city) {
        this.socName = socName;
        this.address = address;
        this.city = city;
    }

    public Society() {}

    public String getSocName() {
        return socName;
    }

    public void setSocName(String socName) {
        this.socName = socName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
