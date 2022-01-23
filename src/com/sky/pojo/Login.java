package com.sky.pojo;

public class Login {
    private int lid;
    private String lName;
    private String pwd;
    private int rid;

    public Login() {
    }

    public Login(int lid, String lName, String pwd, int rid) {
        this.lid = lid;
        this.lName = lName;
        this.pwd = pwd;
        this.rid = rid;
    }

    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    @Override
    public String toString() {
        return "Login{" +
                "lid=" + lid +
                ", lName='" + lName + '\'' +
                ", pwd='" + pwd + '\'' +
                ", rid=" + rid +
                '}';
    }
}
