package com.sky.pojo;

public class Site {
    private int sid;
    private int eid;
    private String sName;
    private String address;
    private String latitude;
    private String longitude;

    public Site(int sid, int eid, String sName, String address, String latitude, String longitude) {
        this.sid = sid;
        this.eid = eid;
        this.sName = sName;
        this.address = address;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Site() {
    }

    @Override
    public String toString() {
        return "Site{" +
                "sid=" + sid +
                ", eid=" + eid +
                ", sName='" + sName + '\'' +
                ", address='" + address + '\'' +
                ", latitude='" + latitude + '\'' +
                ", longitude='" + longitude + '\'' +
                '}';
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }
}
