package com.six.controller;

import com.six.model.DingDanGuanLi;
import com.six.service.ZSOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/order")
public class ZSOrderController {

    @Autowired
    private ZSOrderService orderService;

    @RequestMapping("/orderList")
    @ResponseBody
    public Map<String,Object> orderList(DingDanGuanLi dd, Integer start, Integer limit){

        List<DingDanGuanLi> list =new ArrayList<DingDanGuanLi>();

        Map<String,Object> map =new HashMap<String,Object>();


        if(start==null){
            start=1;
        }
        if(dd.getLoginname()==""){
            dd.setLoginname(null);
        }


        try {
            list=orderService.orderList(dd,start,limit);
            long count = orderService.queryCount(dd);
            map.put("count", count);
            map.put("data",list);
            map.put("code",0);
            map.put("msg","");

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return map;

    }

    @RequestMapping("/ddtype")
    @ResponseBody
    public List<DingDanGuanLi> ddtype() throws Exception {

       List<DingDanGuanLi> list =  orderService.ddtype();

       return list;
    }
}
