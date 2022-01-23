package com.sky.pojo;

public class Role {
    private int rid;
    private String rName;

    public Role(int rid, String rName) {
        this.rid = rid;
        this.rName = rName;
    }

    public Role() {
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName;
    }

    @Override
    public String toString() {
        return "Role{" +
                "rid=" + rid +
                ", rName='" + rName + '\'' +
                '}';
    }
}
