package com.sky.mapper;

import org.apache.ibatis.annotations.Param;

public interface RegisterMapper {
    //判断用户名是否存在
    String isLnameExist(@Param("lname") String lname);
}
