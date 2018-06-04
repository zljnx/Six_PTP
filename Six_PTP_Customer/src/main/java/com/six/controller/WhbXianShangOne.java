package com.six.controller;


import com.six.model.WhbOnlinecollection;
import com.six.service.WhbXianShangOnetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/17.
 */
@Controller
@RequestMapping("/xianxia1")
public class WhbXianShangOne {

    @Autowired
    private WhbXianShangOnetService whbXianShangOnetService;

    @RequestMapping("/selectUnderline1")
    @ResponseBody
    public Map<String,Object> selectUnderline1(Integer start, Integer limit, WhbOnlinecollection whbOnlinecollection){

        List<WhbOnlinecollection> list = new ArrayList<WhbOnlinecollection>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(whbOnlinecollection.getS_borrower()==""){
            whbOnlinecollection.setS_borrower(null);
        }

        if(start==null){
            start=1;
        }

        list=whbXianShangOnetService.selectUnderline1(whbOnlinecollection,start,limit);
        long count = whbXianShangOnetService.selectUnderlineCount1(whbOnlinecollection);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");
        return  map;
    }
    @RequestMapping("addXianShang")
    @ResponseBody
    public void addXianShang(WhbOnlinecollection whbOnlinecollection){

        whbXianShangOnetService.addXianShang(whbOnlinecollection);
    }

    @RequestMapping("selectXianXia1")
    public String selectXianXia1(Integer id, WhbOnlinecollection whbOnlinecollection, Model model){

        WhbOnlinecollection u =  whbXianShangOnetService.selectXianXia1(id);

        model.addAttribute("user",u);

        return  "whb/Cuikuan1";
    }
}
