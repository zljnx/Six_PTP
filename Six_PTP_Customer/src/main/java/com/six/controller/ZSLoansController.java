package com.six.controller;

import com.six.model.Borrowingmanagement;
import com.six.service.ZSLoansService;
import com.six.service.ZSShouYeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/loans")
public class ZSLoansController {

    @Autowired
    private ZSLoansService loansService;
    @Autowired
    private ZSShouYeService shouYeService;

    @RequestMapping("/loanslist")
    @ResponseBody
    public Map<String,Object> loanslist(Borrowingmanagement borrowingmanagement, Integer start, Integer limit){

        List<Borrowingmanagement> list =new ArrayList<Borrowingmanagement>();

        Map<String,Object> map =new HashMap<String,Object>();


        if(start==null){
            start=1;
        }
        if(borrowingmanagement.getJkBorrowingtitle()==""){
            borrowingmanagement.setJkBorrowingtitle(null);
        }
        if(borrowingmanagement.getJksignid()==""){
            borrowingmanagement.setJksignid(null);
        }
        if(borrowingmanagement.getLoginname()==""){
            borrowingmanagement.setLoginname(null);
        }
        if(borrowingmanagement.getSource()==""){
            borrowingmanagement.setSource(null);
        }
        if(borrowingmanagement.getAccounttype()==""){
            borrowingmanagement.setAccounttype(null);
        }
        if(borrowingmanagement.getBiaoproperty()==""){
            borrowingmanagement.setBiaoproperty(null);
        }
        if(borrowingmanagement.getJkstatus()==""){
            borrowingmanagement.setJkstatus(null);
        }
        if(borrowingmanagement.getProductname()==""){
            borrowingmanagement.setProductname(null);
        }
        if(borrowingmanagement.getBorrowingtype()==""){
            borrowingmanagement.setBorrowingtype(null);
        }
        if(borrowingmanagement.getIdentifytype()==""){
            borrowingmanagement.setIdentifytype(null);
        }

        try {
            list=loansService.loanslist(borrowingmanagement,start,limit);
            long count = loansService.queryCount(borrowingmanagement);
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

    @RequestMapping("/addjiekuan")
    public String addjiekuan(Borrowingmanagement borrowingmanagement) throws Exception {
        Borrowingmanagement bw = loansService.addjiekuan(borrowingmanagement);
        System.out.println(bw);
        shouYeService.sorladd(bw);
        return "zs/jiekuanguanli";
    }

    @RequestMapping("/xiangqing")
    public String xiangqing(String jkid, Model model) throws Exception {

        Borrowingmanagement borrowingmanagement=loansService.xiangqing(jkid);
        model.addAttribute("borrowingmanagement",borrowingmanagement);
        return "zs/jiekanxiangqing";
    }

    @RequestMapping("/zuofei")
    @ResponseBody
    public String zuofei(String jkid) throws Exception {
        loansService.zuofei(jkid);
        return "success";
    }

    @RequestMapping("/shenhe")
    public String shenhe(String jkid,Model model){
        model.addAttribute("jkid",jkid);
        return "zs/shenhe";
    }

    @RequestMapping("/tongguo")
    @ResponseBody
    public String tongguo(String jkid) throws Exception {
        loansService.tongguo(jkid);
        return "success";
    }

    @RequestMapping("/butongguo")
    @ResponseBody
    public String butongguo(String jkid) throws Exception {
        loansService.butongguo(jkid);
        return "success";
    }

    @RequestMapping("/fabu")
    @ResponseBody
    public String fabu(String jkid) throws Exception {
        loansService.fabu(jkid);
        return "success";
    }

    @RequestMapping("/yufabu")
    @ResponseBody
    public String yufabu(String yufabutime,String jkid) throws Exception {
        System.out.println(yufabutime);
        loansService.yufabu(yufabutime,jkid);
        return "success";
    }

    @RequestMapping("/tuijian")
    @ResponseBody
    public String tuijian(String jkid) throws Exception {

        loansService.tuijian(jkid);
        return "success";
    }
}
