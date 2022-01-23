package com.sky.pojo;

public class Warehouse {
    private int wid;
    private int sid;
    private int eid;
    private int now;
    private int total;

    public Warehouse() {
    }

    public Warehouse(int wid, int sid, int eid, int now, int total) {
        this.wid = wid;
        this.sid = sid;
        this.eid = eid;
        this.now = now;
        this.total = total;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
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

    public int getNow() {
        return now;
    }

    public void setNow(int now) {
        this.now = now;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Warehouse{" +
                "wid=" + wid +
                ", sid=" + sid +
                ", eid=" + eid +
                ", now=" + now +
                ", total=" + total +
                '}';
    }
}
