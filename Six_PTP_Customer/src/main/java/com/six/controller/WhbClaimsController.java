package com.six.controller;

import com.six.model.WhbClaims;
import com.six.service.WhbClaimsService;
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
@RequestMapping("claims")
public class WhbClaimsController {

    @Autowired
    private WhbClaimsService whbClaimsService;

    /**
     * 债权转让协议
     * @param start
     * @param limit
     * @param whbClaims
     * @return
     */
    @RequestMapping("selectClaims")
    public Map<String,Object> selectClaims(Integer start, Integer limit, WhbClaims whbClaims){

        List<WhbClaims> list = new ArrayList<WhbClaims>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(whbClaims.getSellers()==""){
            whbClaims.setSellers(null);
        }

        if(start==null){
            start=1;
        }

        list=whbClaimsService.selectClaims(whbClaims,start,limit);
        long count = whbClaimsService.selectClaimsCount(whbClaims);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");
        return  map;
    }
}
