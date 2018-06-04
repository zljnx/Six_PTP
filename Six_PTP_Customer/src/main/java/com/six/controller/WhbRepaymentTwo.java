package com.six.controller;

import com.six.model.WhbRepayment;
import com.six.service.WhbRepaymentService;
import com.six.service.WhbRepaymentServiceTwo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/19.
 */
@RestController
@RequestMapping("/repayment1")
public class WhbRepaymentTwo {

    @Autowired
    private WhbRepaymentServiceTwo whbRepaymentServiceTwo;

    @RequestMapping("/selectRepayment1")
    public Map<String,Object> selectRepayment1(Integer start, Integer limit, WhbRepayment whbRepayment){

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

        list=whbRepaymentServiceTwo.selectRepayment1(whbRepayment,start,limit);
        long count = whbRepaymentServiceTwo.selectRepaymentCount1(whbRepayment);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");


        return  map;
    }

    @RequestMapping("queryAllMoney")
    public Double queryAllMoney(){
        Double aa=whbRepaymentServiceTwo.queryAllMoney();
        return aa;

    }
    @RequestMapping("queryAllMoney1")
    public Double queryAllMoney1(){
        Double aa=whbRepaymentServiceTwo.queryAllMoney1();
        return aa;

    }
    @RequestMapping("queryAllMoney2")
    public Double queryAllMoney2(){
        Double aa=whbRepaymentServiceTwo.queryAllMoney2();
        return aa;

    }
}
