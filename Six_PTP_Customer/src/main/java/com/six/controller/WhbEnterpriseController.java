package com.six.controller;

import com.six.model.WhbPersonal;
import com.six.service.WhbEnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/23.
 */
@RestController
@RequestMapping("enterprise")
public class WhbEnterpriseController {

    @Autowired
    private WhbEnterpriseService whbEnterpriseService;

    /**
     * 企业
     * @param start
     * @param limit
     * @param whbPersonal
     * @return
     */
    @RequestMapping("selectEnterprise")
    public Map<String,Object> selectEnterprise(Integer start, Integer limit, WhbPersonal whbPersonal){

        List<WhbPersonal> list = new ArrayList<WhbPersonal>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(whbPersonal.getE_number()==""){
            whbPersonal.setE_number(null);
        }

        if(start==null){
            start=1;
        }

        list=whbEnterpriseService.selectEnterprise(whbPersonal,start,limit);
        long count = whbEnterpriseService.selectEnterpriseCount(whbPersonal);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");
        return  map;
    }

    /**
     *
     * 个人
     * @param start
     * @param limit
     * @param whbPersonal
     * @return
     */
    @RequestMapping("selectEnterprise2")
    public Map<String,Object> selectEnterprise2(Integer start, Integer limit, WhbPersonal whbPersonal){

        List<WhbPersonal> list = new ArrayList<WhbPersonal>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(whbPersonal.getE_number()==""){
            whbPersonal.setE_number(null);
        }

        if(start==null){
            start=1;
        }

        list=whbEnterpriseService.selectEnterprise2(whbPersonal,start,limit);
        long count = whbEnterpriseService.selectEnterpriseCount2(whbPersonal);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");
        return  map;
    }
}
