package com.six.controller;

import com.six.model.Personalloanintention;
import com.six.model.UserInfo;
import com.six.service.ZSPersonalloanintentionService;
import com.six.util.ExportExcel;
import org.jboss.netty.handler.codec.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/borrowmoney")
public class ZSPersonalloanintentionController {

    @Autowired
    private ZSPersonalloanintentionService personalloanintentionService;

    @RequestMapping("/queryPersonalloanintentionList")
    @ResponseBody
    public Map<String,Object> queryPersonalloanintentionList(Personalloanintention personalloanintention, Integer start, Integer limit, Integer zrstatus){

        List<Personalloanintention> list =new ArrayList<Personalloanintention>();

        Map<String,Object> map =new HashMap<String,Object>();


        if("请选择省".equals(personalloanintention.getProvince())){
            personalloanintention.setProvince(null);
        }
        if("请选择市".equals(personalloanintention.getCity())){
            personalloanintention.setCity(null);
        }
        if("请选择县/区".equals(personalloanintention.getArea())){
            personalloanintention.setArea(null);
        }
        if(personalloanintention.getUsername()==""){
            personalloanintention.setUsername(null);
        }
        if(start==null){
            start=1;
        }
        System.out.println(personalloanintention.getProvince());
        System.out.println(personalloanintention.getCity());
        System.out.println(personalloanintention.getArea());

        try {
            list=personalloanintentionService.queryPersonalloanintentionList(personalloanintention,start,limit);
            long count = personalloanintentionService.queryCount(personalloanintention);
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


    @ResponseBody
    @RequestMapping("/gerenchuli")
    public String gerenchuli(String dispose, String grjkid, HttpSession session){

        UserInfo userInfo = (UserInfo) session.getAttribute("adminSession");

        String loginname =  userInfo.getLoginname();
        String username = userInfo.getUsername();

        try {
            personalloanintentionService.gerenchuli(dispose,grjkid,loginname,username);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "success";
    }

    @RequestMapping("/gerenxiangqing")
    public String gerenxiangqing(String grjkid, Model model) throws Exception {

        Personalloanintention personalloanintention =  personalloanintentionService.gerenxiangqing(grjkid);

        model.addAttribute("personalloanintention",personalloanintention);

        return "zs/gerenxiangqing";
    }

    @RequestMapping("/shiyan")
    public void shiyan(HttpSession session){
        UserInfo userInfo = (UserInfo) session.getAttribute("adminSession");
        System.out.println(userInfo);
    }

    @RequestMapping("/queryQiyeList")
    @ResponseBody
    public Map<String,Object> queryQiyeList(Personalloanintention personalloanintention, Integer start, Integer limit, Integer zrstatus){

        List<Personalloanintention> list =new ArrayList<Personalloanintention>();

        Map<String,Object> map =new HashMap<String,Object>();

        if("请选择省".equals(personalloanintention.getProvince())){
            personalloanintention.setProvince(null);
        }
        if("请选择市".equals(personalloanintention.getCity())){
            personalloanintention.setCity(null);
        }
        if("请选择县/区".equals(personalloanintention.getArea())){
            personalloanintention.setArea(null);
        }
        if(personalloanintention.getUsername()==""){
            personalloanintention.setUsername(null);
        }
        if(start==null){
            start=1;
        }

        try {
            list=personalloanintentionService.queryQiyeList(personalloanintention,start,limit);
            long count = personalloanintentionService.queryCount1(personalloanintention);
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

    @RequestMapping("/qiyexiangqing")
    public String qiyexiangqing(String grjkid, Model model) throws Exception {

        Personalloanintention personalloanintention =  personalloanintentionService.qiyexiangqing(grjkid);

        model.addAttribute("personalloanintention",personalloanintention);

        return "zs/qiyexiangqing";
    }

    @RequestMapping("/daochu")
    public void daochu(HttpServletResponse Response) throws Exception {
        Personalloanintention personalloanintention = new Personalloanintention();
        String title = "收款流水";
        String[] rowName= {"序号","联系人","手机号码","借款金额(元)","借款期限","借款类型","所在城市","筹款期限","借款描述","提交时间"};
        List<Object[]>  dataList =new ArrayList<Object[]>();
        List<Personalloanintention> querygeren = personalloanintentionService.querygeren(personalloanintention);
        Object[] obj=null;
        for (int i = 0; i < querygeren.size(); i++) {
            obj = new Object[rowName.length];
            obj[0]=querygeren.get(i).getGrjkid();
            obj[1]=querygeren.get(i).getUsername();
            obj[2]=querygeren.get(i).getUserphone();
            obj[3]=querygeren.get(i).getGrAmount();
            obj[4]=querygeren.get(i).getGrdeadline();
            obj[5]=querygeren.get(i).getGrjktype();
            obj[6]=querygeren.get(i).getGrcity();
            obj[7]=querygeren.get(i).getGrFundraisingdeadline();
            obj[8]=querygeren.get(i).getGrjkdescribe();
            obj[9]=querygeren.get(i).getGrsubmittime();
            dataList.add(obj);
        }
        ExportExcel exportExcel=new ExportExcel(title, rowName, dataList, Response);
        try {
            exportExcel.export();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }


}
