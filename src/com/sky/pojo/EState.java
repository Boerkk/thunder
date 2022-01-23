package com.sky.pojo;

public class EState {
    private int sid;
    private String sName;

    public EState(int sid, String sName) {
        this.sid = sid;
        this.sName = sName;
    }

    public EState() {
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    @Override
    public String toString() {
        return "EState{" +
                "sid=" + sid +
                ", sName='" + sName + '\'' +
                '}';
    }
}
