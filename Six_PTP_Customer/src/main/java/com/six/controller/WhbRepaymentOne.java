package com.six.controller;


import com.six.model.WhbRepayment;
import com.six.service.WhbRepaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/17.
 */
@RestController
@RequestMapping("/repayment")
public class WhbRepaymentOne {

    @Autowired
    private WhbRepaymentService whbRepaymentService;

    @RequestMapping("/selectRepayment")
    public Map<String,Object> selectRepayment(Integer start, Integer limit, WhbRepayment whbRepayment){

        List<WhbRepayment> list = new ArrayList<WhbRepayment>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(whbRepayment.getC_loginname()==""){
            whbRepayment.setC_loginname(null);
        }
        if(whbRepayment.getC_title()==""){
            whbRepayment.setC_title(null);
        }
        if(start==null){
            start=1;
        }

        list=whbRepaymentService.selectRepayment(whbRepayment,start,limit);
        long count = whbRepaymentService.selectRepaymentCount(whbRepayment);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");


        return  map;
    }
    @RequestMapping("queryAllMoney")
    public Double queryAllMoney(){
        Double aa=whbRepaymentService.queryAllMoney();
        return aa;

    }
    @RequestMapping("queryAllMoney1")
    public Double queryAllMoney1(){
        Double aa=whbRepaymentService.queryAllMoney1();
        return aa;

    }
    @RequestMapping("queryAllMoney2")
    public Double queryAllMoney2(){
        Double aa=whbRepaymentService.queryAllMoney2();
        return aa;

    }

}
