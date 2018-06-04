package com.six.controller;

import com.six.model.WhbAdvance;
import com.six.service.WhbAdvanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/24.
 */
@RestController
@RequestMapping("advance")
public class WhbAdvanceController {

    @Autowired
    private WhbAdvanceService whbAdvanceService;

    @RequestMapping("selectAdvance")
    public Map<String,Object> selectAdvance(Integer start, Integer limit, WhbAdvance whbAdvance){

        List<WhbAdvance> list = new ArrayList<WhbAdvance>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(whbAdvance.getLoginname()==""){
            whbAdvance.setLoginname(null);
        }

        if(start==null){
            start=1;
        }

        list=whbAdvanceService.selectAdvance(whbAdvance,start,limit);
        long count = whbAdvanceService.selectAdvanceCount(whbAdvance);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");
        return  map;
    }
}
