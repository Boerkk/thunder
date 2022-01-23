package com.sky.service;

import com.sky.mapper.OrderMapper;
import com.sky.pojo.Order;
import com.sky.utils.MyBatisSession;
import org.apache.ibatis.session.SqlSession;

import java.util.HashMap;
import java.util.List;

public class OrderService {
    //这个方法用来获取持久层返回的所有需要审核的订单
    public List<HashMap> outboundOrderCheckService(){
        SqlSession session = MyBatisSession.getSession();
        OrderMapper mapper = session.getMapper(OrderMapper.class);
        return mapper.getOrder(4);
    }
    //这个方法用来将订单状态为4的订单的订单状态设置为5
    public int checkOrder(int oid) {
        SqlSession session = MyBatisSession.getSession();
        OrderMapper mapper = session.getMapper(OrderMapper.class);
        return mapper.checkOrder(oid);
    }
    //这个方法用来获取所有订单信息
    public List<HashMap> getOrder() {
        SqlSession session = MyBatisSession.getSession();
        OrderMapper mapper = session.getMapper(OrderMapper.class);
        return mapper.getOrder();
    }
    //重载：这个方法用来获取待审核的订单
    public List<HashMap> getOrder(int state) {
        SqlSession session = MyBatisSession.getSession();
        OrderMapper mapper = session.getMapper(OrderMapper.class);
        return mapper.getOrder(state);
    }


}
