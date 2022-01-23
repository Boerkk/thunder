package com.sky.pojo;

public class Code {
    private int codeid;
    private int lid;
    private String code;
    private String time;

    public Code() {
    }

    public Code(int codeid, int lid, String code, String time) {
        this.codeid = codeid;
        this.lid = lid;
        this.code = code;
        this.time = time;
    }

    @Override
    public String toString() {
        return "Code{" +
                "codeid=" + codeid +
                ", lid=" + lid +
                ", code='" + code + '\'' +
                ", time='" + time + '\'' +
                '}';
    }

    public int getCodeid() {
        return codeid;
    }

    public void setCodeid(int codeid) {
        this.codeid = codeid;
    }

    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
