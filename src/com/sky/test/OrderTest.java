package com.sky.test;

import com.sky.pojo.Order;
import com.sky.service.OrderService;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class OrderTest {
    @Test
    public void showOrder(){
        OrderService orderService = new OrderService();
        List<HashMap> order = orderService.getOrder();
        System.out.println(order);
    }

    @Test
    public void orderTest(){
        OrderService orderService = new OrderService();
        List<HashMap> order = orderService.getOrder(4);
        System.out.println(order);

    }

}
