package com.sky.controller;

import com.sky.service.LoginService;
import com.sky.service.RegisterService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/isLnameExist")
public class IsLnameExistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String lname = request.getParameter("lname");
        RegisterService registerService = new RegisterService();
        String lid = registerService.isLnameExist(lname);
        if (lid!=null){
            //用户名存在
            response.getWriter().print(1);
        }else {
            //用户名不存在
            response.getWriter().print(0);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
