package com.sky.pojo;

public class Goods {
    private int gid;
    private String gName;
    private int perPrice;
    private String weights;

    public Goods() {
    }

    public Goods(int gid, String gName, int perPrice, String weights) {
        this.gid = gid;
        this.gName = gName;
        this.perPrice = perPrice;
        this.weights = weights;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "gid=" + gid +
                ", gName='" + gName + '\'' +
                ", perPrice=" + perPrice +
                ", weights='" + weights + '\'' +
                '}';
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public int getPerPrice() {
        return perPrice;
    }

    public void setPerPrice(int perPrice) {
        this.perPrice = perPrice;
    }

    public String getWeights() {
        return weights;
    }

    public void setWeights(String weights) {
        this.weights = weights;
    }
}
