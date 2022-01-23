package com.sky.controller;

import com.google.gson.Gson;
import com.sky.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/*
这个servlet用来拉黑用户
url:/disableLoginServlet
 */
public class DisableLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ids = request.getParameter("ids");
        //将ids通过","进行分割，变为String数组
        String[] split = ids.split("\\,");
        //进行拉黑。
        int i = new UserService().disableLogin(split);
        Map map = new HashMap();
        map.put("event",i);
        map.put("message","拉黑成功");
        map.put("message2","拉黑失败");
        Gson gson = new Gson();
        String toJson = gson.toJson(map);
        response.getWriter().write(toJson);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
