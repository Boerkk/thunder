package com.sky.service;

import com.sky.mapper.RegisterMapper;
import com.sky.utils.MyBatisSession;

public class RegisterService {
    //判断用户名是否存在
    public String isLnameExist(String lname) {
        return MyBatisSession.getSession().getMapper(RegisterMapper.class).isLnameExist(lname);
    }
}
