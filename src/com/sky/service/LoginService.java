package com.sky.service;

import com.sky.mapper.LoginMapper;
import com.sky.pojo.Code;
import com.sky.pojo.Login;
import com.sky.utils.MyBatisSession;

public class LoginService {

    public String isLoginOk(String lname, String pwd) {
        return MyBatisSession.getSession().getMapper(LoginMapper.class).isLoginOk(lname,pwd);
    }

    public Login getLoginByLname(String lname){
        return MyBatisSession.getSession().getMapper(LoginMapper.class).getLidByLname(lname);
    }

    public String getUserEmailById(int lid) {
        return MyBatisSession.getSession().getMapper(LoginMapper.class).getUserEmailById(lid);
    }

    public Code isCodeOk(String lid, String code) {
        return MyBatisSession.getSession().getMapper(LoginMapper.class).isCodeOk(lid,code);
    }

    public String getEmpEmailById(int lid) {
        return MyBatisSession.getSession().getMapper(LoginMapper.class).getEmpEmailById(lid);
    }

    public void insertCode(int lid, String code,String time) {
        MyBatisSession.getSession().getMapper(LoginMapper.class).insertCode(lid,code,time);
    }

    public int updateCode(int lid,String code,String time) {
        return MyBatisSession.getSession().getMapper(LoginMapper.class).updateCode(lid,code,time);
    }

    public String isEmailExist(String email) {
        return MyBatisSession.getSession().getMapper(LoginMapper.class).isEmailExist(email);
    }
}
