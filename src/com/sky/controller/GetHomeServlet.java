package com.sky.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/getHome")
public class GetHomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        跳转到首页
        HttpSession session = request.getSession();
        //移除请先登录session
        session.removeAttribute("ErrorMes");
        String lid = (String)session.getAttribute("lid");
        //判断session中是否有lid
        if(!"".equals(lid)&&lid!=null){
            //跳转后端页面
            response.sendRedirect("/jsp/BootstrapHome.jsp");
        }else {
            //未登录返回登录页面
            session.setAttribute("ErrorMes","请先登录");
            response.sendRedirect("index.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
