package com.sky.service;

import com.sky.mapper.UserMapper;
import com.sky.pojo.User;
import com.sky.utils.MyBatisSession;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class UserService {
    //获取全部的用户
    public List<User> getAllUser() {
        return MyBatisSession.getSession().getMapper(UserMapper.class).getAllUser();
    }
    //拉黑用户
    public int disableLogin(String[] ids) {
        return MyBatisSession.getSession().getMapper(UserMapper.class).disableLogin(ids);
    }
    //拉白用户
    public int ableLogin(String[] ids) {
        return MyBatisSession.getSession().getMapper(UserMapper.class).ableLogin(ids);
    }
}
