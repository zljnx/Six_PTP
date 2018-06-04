package com.six.controller;

import com.six.model.DebtManagement;
import com.six.service.ZSDebtmanagemenService;
import com.six.util.JSONUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/bond")
public class ZSDebtmanagementController {

    @Autowired
    private ZSDebtmanagemenService debtmanagemenService;

    @RequestMapping("/DebtmanagementList")
    @ResponseBody
    public Map<String,Object> queryDebtmanagementList(DebtManagement debtManagement, Integer start, Integer limit,Integer zqstatus){


        List<DebtManagement> list =new ArrayList<DebtManagement>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(debtManagement.getInvestor()==""){
            debtManagement.setInvestor(null);
        }
        if(debtManagement.getBorrowingtitle()==""){
            debtManagement.setBorrowingtitle(null);
        }

        if(start==null){
            start=1;
        }

        try {
            list=debtmanagemenService.queryDebtmanagementList(debtManagement,start,limit,zqstatus);
            long count = debtmanagemenService.queryCount(debtManagement,zqstatus);
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

}
