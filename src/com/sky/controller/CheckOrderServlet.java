package com.sky.controller;

import com.sky.service.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
/*
* 这个Servlet接受订单的id，用来审核订单
* url:/checkOrderServlet
* */
public class CheckOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //判断是否有权限
        HttpSession session = request.getSession();
        String userName = (String) session.getAttribute("userName");
        //如果是"admin"则允许修改，否则没有权限。
        if("admin".equals(userName)){
            //将获取的String类型的oid转换为int
            int oid = Integer.parseInt(request.getParameter("oid"));
            //判断订单状态是不是状态4（待审核）
            if(oid==4){
                OrderService orderService = new OrderService();
                //当i为0时表示更新失败。不为0时表示更新成功
                int i = orderService.checkOrder(oid);
                response.getWriter().write(i);

            }else{
                //订单状态不是4，不必审核
                response.getWriter().write(0);

            }
        }else{
            //没有权限,无法审核
            response.getWriter().write(0);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
