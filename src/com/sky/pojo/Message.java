package com.sky.pojo;

public class Message {
    private int mid;
    private int oid;
    private int wid;
    private String time;
    private int state;

    public Message(int mid, int oid, int wid, String time, int state) {
        this.mid = mid;
        this.oid = oid;
        this.wid = wid;
        this.time = time;
        this.state = state;
    }

    public Message() {
    }

    @Override
    public String toString() {
        return "Message{" +
                "mid=" + mid +
                ", oid=" + oid +
                ", wid=" + wid +
                ", time='" + time + '\'' +
                ", state=" + state +
                '}';
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
