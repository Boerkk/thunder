package com.sky.controller;

import com.google.gson.Gson;
import com.sky.service.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/*
这个servlet用来审核订单
url:/orderCheckServlet
 */
public class OrderCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("hello");
        int a=0;
        String ids = request.getParameter("ids");
        System.out.println(ids);
        String[] split = ids.split("\\,");
        System.out.println(Arrays.toString(split));
        for (int i = 0; i < split.length; i++) {
            int i1 = new OrderService().checkOrder(Integer.valueOf(split[i]));
            System.out.println(i1);
            a++;
        }
        Map map = new HashMap();
        map.put("event",a);
        map.put("message","审核成功");
        Gson gson = new Gson();
        String toJson = gson.toJson(map);
        response.getWriter().write(toJson);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
