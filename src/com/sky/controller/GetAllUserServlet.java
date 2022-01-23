package com.sky.controller;

import com.google.gson.Gson;
import com.sky.pojo.User;
import com.sky.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/*
url:/getAllUserServlet
 */
public class GetAllUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> list = new UserService().getAllUser();
        Map map = new HashMap();
        for (User user:list) {
            if(user.getState().equals(1)||user.getState().equals("1")){
                user.setState("黑名单");
            }else{
                user.setState("正常");
            }
        }
        map.put("rows",list);
        map.put("total",list.size());
        Gson gson = new Gson();
        String toJson = gson.toJson(map);
        response.getWriter().write(toJson);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
