package com.sky.controller;

import com.sky.pojo.Login;
import com.sky.pojo.User;
import com.sky.service.LoginService;
import com.sky.utils.EmailUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

//获取验证码
@WebServlet("/getCode")
public class GetCodeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LoginService loginService = new LoginService();
        String lname = request.getParameter("lname");
        if(lname==null||"".equals(lname)){
            response.getWriter().print(1);
        }else {
//            Login login = loginService.getLoginByLnames(lname);
            Login login = loginService.getLoginByLname(lname);
            if(login!=null){
//                String emaila = loginService.getEmailByIds(login);
                String email = "";
                if(login.getRid()==5){
                    email = loginService.getUserEmailById(login.getLid());
                }else {
                    email = loginService.getEmpEmailById(login.getLid());
                }
                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
                System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
                if(!"".equals(email)){
                    String code = EmailUtil.getCode();
                    int i = loginService.updateCode(login.getLid(), code,df.format(new Date()));
                    if(i!=1){
                        loginService.insertCode(login.getLid(),code,df.format(new Date()));
                    }
//                    EmailUtil.sendEmail(code,email);
                    response.getWriter().print(0);
                }else {
                    response.getWriter().print(1);
                }
            }else {
                response.getWriter().print(1);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
