package com.sky.controller;

import com.sky.pojo.Code;
import com.sky.pojo.Login;
import com.sky.service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    //返回值 lid登录成功 0验证码错误 -1用户名密码错误 -2验证码超时
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取输入用户名
        String lname = request.getParameter("lname");
        //获取输入密码
        String lpwd = request.getParameter("pwd");
        //获取输入验证码
        String code = request.getParameter("code");
        //判断是否有为空
        boolean flag = (lname!=null&&lpwd!=null&&code!=null);
        if(flag){
            LoginService loginService = new LoginService();
//            loginService.isLoginOks(lname,lpwd);
            //判断用户名密码是否正确，如果正确返回lid错误返回null
            String lid = loginService.isLoginOk(lname,lpwd);
            if(lid==null){
                //用户名密码错误
                response.getWriter().print(-1);
            }else {
                //用户名密码正确
                Code code1 = loginService.isCodeOk(lid,code);
                if(code1!=null){
                    //验证码正确
                    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
                    try {
                        Date before = df.parse(code1.getTime());
                        Date now = new Date();
                        long diff = now.getTime()-before.getTime();
                        long min = diff/(1000);
                        if(min>300){
                            //验证码超时
                            response.getWriter().print(-2);
                        }else {
                            //登录成功
                            request.getSession().setAttribute("lid",lid);
                            response.getWriter().print(lid);
                        }
                    }catch (Exception e){
                        e.printStackTrace();
                    }
                }else {
                    //验证码错误
                    response.getWriter().print(0);
                }
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
