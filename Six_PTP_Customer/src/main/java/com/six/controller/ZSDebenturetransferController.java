package com.six.controller;

import com.six.model.Debenturetransfer;
import com.six.service.ZSDebenturetransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/zhuanrang")
public class ZSDebenturetransferController {

    @Autowired
    private ZSDebenturetransferService debenturetransferService;

    @RequestMapping("/DebenturetransferList")
    @ResponseBody
    public Map<String,Object> queryDebenturetransferList(Debenturetransfer debenturetransfer,Integer start, Integer limit,Integer zrstatus){

        List<Debenturetransfer> list =new ArrayList<Debenturetransfer>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(debenturetransfer.getSignid()==""){
            debenturetransfer.setSignid(null);
        }
        if(debenturetransfer.getBorrowingtitle()==""){
            debenturetransfer.setBorrowingtitle(null);
        }
        if(debenturetransfer.getZqid()==""){
            debenturetransfer.setZqid(null);
        }
        if(debenturetransfer.getSellers()==""){
            debenturetransfer.setSellers(null);
        }

        if(start==null){
            start=1;
        }

        try {
            list=debenturetransferService.queryDebenturetransferList(debenturetransfer,start,limit,zrstatus);
            long count = debenturetransferService.queryCount(debenturetransfer,zrstatus);
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

    @RequestMapping("/pldelDebenturetransfer")
    @ResponseBody
    public String pldelDebenturetransfer(String ids){
        try {
            debenturetransferService.pldelDebenturetransfer(ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "发布成功";
    }

    @RequestMapping("/plxiajiaDebenturetransfer")
    @ResponseBody
    public String plxiajiaDebenturetransfer(String ids){
        try {
            debenturetransferService.plxiajiaDebenturetransfer(ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "下架成功";
    }

    @RequestMapping("/delDebenturetransfer")
    @ResponseBody
    public String delDebenturetransfer(String zrid,Integer zrstatus){
        System.out.println(zrid+"----"+zrstatus);
        try {
            debenturetransferService.delDebenturetransfer(zrid,zrstatus);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "成功";
    }

}
