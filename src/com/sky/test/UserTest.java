package com.sky.test;

import com.sky.mapper.UserMapper;
import com.sky.pojo.User;
import com.sky.service.OrderService;
import com.sky.service.UserService;
import com.sky.utils.MyBatisSession;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class UserTest {
    @Test
    public void userTest1(){
        UserService userService = new UserService();
        List<User> allUser = userService.getAllUser();
        System.out.println(allUser);
    }
}
