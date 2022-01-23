package com.sky.mapper;

import com.sky.pojo.Code;
import com.sky.pojo.Login;
import com.sky.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface LoginMapper {
    //判断验证码是否正确
    public abstract Code isCodeOk(@Param("lid") String lid, @Param("code") String code);

    //根据用户名获取lid
    public abstract Login getLidByLname(@Param("lname") String lname);

    //获取用户邮箱
    public abstract String getUserEmailById(@Param("lid") int lid);

    //获取员工邮箱
    public abstract String getEmpEmailById(@Param("lid") int lid);

    //获取验证码后存入数据库
    public abstract void insertCode(@Param("lid") int lid, @Param("code") String code,@Param("time") String time);

    //获取新验证码后删除原验证码
    public abstract int updateCode(@Param("lid") int lid, @Param("code") String code,@Param("time") String time);

    //根据账号和密码获取lid
    String isLoginOk(@Param("lname") String lname,@Param("pwd") String pwd);

    String isEmailExist(@Param("email") String email);
}
