package com.sky.controller;

import com.google.gson.Gson;
import com.sky.pojo.Order;
import com.sky.service.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
 *OutboundOrderCheckServlet出库订单审核
 * url：/outboundOrderCheckServlet
 *
 * */
public class OutboundOrderCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //这个servlet获取所有待审核订单的
        OrderService orderService = new OrderService();
        //这里存储了需要审核的订单
        List<HashMap> orders = orderService.getOrder(4);
        System.out.println(orders);
        Map map = new HashMap();
        map.put("rows",orders);
        map.put("total",orders.size());
        //转成Json，然后返回
        Gson gson = new Gson();
        String toJson = gson.toJson(map);
        //回写
        response.getWriter().write(toJson);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
