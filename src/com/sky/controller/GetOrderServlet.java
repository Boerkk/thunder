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
GetOrderServlet 这个servlet用来获取所有的订单
url:getOrderServlet
 */
public class GetOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderService orderService = new OrderService();
        List<HashMap> order = orderService.getOrder();
        int count = order.size();
//        int count=orderService.getCount();
        Map map = new HashMap();
        map.put("rows",order);
        map.put("total",count);
        Gson gson = new Gson();
        String toJson = gson.toJson(map);
        response.getWriter().write(toJson);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
