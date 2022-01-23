package com.sky.pojo;

public class Emp {
    private int eid;
    private String eName;
    private String idCard;
    private int age;
    private int sex;
    private String phone;
    private String email;
    private int sid;
    private Double salary;
    private int lid;

    public Emp() {
    }

    public Emp(int eid, String eName, String idCard, int age, int sex, String phone, String email, int sid, Double salary, int lid) {
        this.eid = eid;
        this.eName = eName;
        this.idCard = idCard;
        this.age = age;
        this.sex = sex;
        this.phone = phone;
        this.email = email;
        this.sid = sid;
        this.salary = salary;
        this.lid = lid;
    }

    @Override
    public String toString() {
        return "Emp{" +
                "eid=" + eid +
                ", eName='" + eName + '\'' +
                ", idCard='" + idCard + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", sid=" + sid +
                ", salary=" + salary +
                ", lid=" + lid +
                '}';
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String geteName() {
        return eName;
    }

    public void seteName(String eName) {
        this.eName = eName;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
    }
}
