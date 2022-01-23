package com.sky.mapper;

import com.sky.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface OrderMapper {


    //这个方法用来将订单状态为4的订单的订单状态设置为5
    int checkOrder(@Param("oid") int oid);

    //这个方法返回所有的订单
    List<HashMap> getOrder();
    //重载：这个方法返回所有的订单
    List<HashMap> getOrder(@Param("state")int state);

}
