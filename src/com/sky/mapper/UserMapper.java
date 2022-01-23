package com.sky.mapper;

import com.sky.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

/*
用户相关的操作
 */
public interface UserMapper {
    //用户获取全部的用户
    List<User> getAllUser();

    //用来拉黑用户
    int disableLogin(@Param("ids") String[] ids);
    //用来洗白用户
    int ableLogin(@Param("ids") String[] ids);
    //用来洗白用户
    int ableLoginn(@Param("ids") String[] ids);


}
