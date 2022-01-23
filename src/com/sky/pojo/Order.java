package com.sky.pojo;

import org.apache.ibatis.type.Alias;

@Alias("Order")
public class Order {
    private int oid;
    private int uid;
    private int gid;
    private double price;
    private double weight;
    private int sid;
    private int retentionID;
    private String address;
    private int state;
    private String goodname;


    public Order() {
    }

    public Order(int oid, int uid, int gid, double price, double weight, int sid, int retentionID, String address, int state, String goodname) {
        this.oid = oid;
        this.uid = uid;
        this.gid = gid;
        this.price = price;
        this.weight = weight;
        this.sid = sid;
        this.retentionID = retentionID;
        this.address = address;
        this.state = state;
        this.goodname = goodname;
    }

    @Override
    public String toString() {
        return "Order{" +
                "oid=" + oid +
                ", uid=" + uid +
                ", gid=" + gid +
                ", price=" + price +
                ", weight=" + weight +
                ", sid=" + sid +
                ", retentionID=" + retentionID +
                ", address='" + address + '\'' +
                ", state=" + state +
                ", goodname='" + goodname + '\'' +
                '}';
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getRetentionID() {
        return retentionID;
    }

    public void setRetentionID(int retentionID) {
        this.retentionID = retentionID;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getGoodName() {
        return goodname;
    }

    public void setGoodName(String goodname) {
        this.goodname = goodname;
    }
}
