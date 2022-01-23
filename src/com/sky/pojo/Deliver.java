package com.sky.pojo;

public class Deliver {
    private int did;
    private int eid;
    private int score;
    private int count;

    public Deliver() {
    }

    public void say(){
        System.out.println("hello");
    }

    public Deliver(int did, int eid, int score, int count) {
        this.did = did;
        this.eid = eid;
        this.score = score;
        this.count = count;
    }

    @Override
    public String toString() {
        return "Deliver{" +
                "did=" + did +
                ", eid=" + eid +
                ", score=" + score +
                ", count=" + count +
                '}';
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
