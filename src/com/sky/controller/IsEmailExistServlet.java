package com.sky.controller;

import com.sky.service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/isEmailExist")
public class IsEmailExistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取用户输入邮箱
        String email = request.getParameter("email");
        LoginService loginService = new LoginService();
        //查看是否有相同邮箱
        String lid = loginService.isEmailExist(email);
        if(lid!=null&&!"".equals(lid)){
            //有相同邮箱返回1
            response.getWriter().print(1);
        }else {
            //没有相同邮箱返回0
            response.getWriter().print(0);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
