package com.six.controller;

import com.six.model.WhbBad;
import com.six.service.WhbBadService;
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
@RequestMapping("bad")
public class WhbBadController {

    @Autowired
    private WhbBadService whbBadService;

    @RequestMapping("selectBad")
    public Map<String,Object> selectBad(Integer start, Integer limit, WhbBad whbBad){

        List<WhbBad> list = new ArrayList<WhbBad>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(whbBad.getB_transferee()==""){
            whbBad.setB_transferee(null);
        }

        if(start==null){
            start=1;
        }

        list=whbBadService.selectBad(whbBad,start,limit);
        long count = whbBadService.selectBadCount(whbBad);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");
        return  map;
    }
}
